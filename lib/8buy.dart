 import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  final double price;   

  const PaymentPage({super.key, required this.price});

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  
  final TextEditingController _cardHolderController = TextEditingController();
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  bool _isInstallment = false;  // دفع أو تقسيط
  double _remainingAmount = 0;  // للحفظ
  bool _paymentSuccess = false;  // نجاح  

  String _errorMessage = '';  //   رسالة الخطأ

 
  bool _validateFields() {
    if (_cardHolderController.text.isEmpty ||
        _cardNumberController.text.isEmpty ||
        _phoneController.text.isEmpty ||
        _addressController.text.isEmpty) {
      setState(() {
        _errorMessage = 'يرجى ملء جميع الحقول';
      });
      return false;
    }
 
    if (_cardNumberController.text.length <= 5) {
      setState(() {
        _errorMessage = 'رقم البطاقة يجب   يكون اكبر  من 5 رقم';
      });
      return false;
    }
 
    if (_phoneController.text.length != 9) {
      setState(() {
        _errorMessage = 'رقم الهاتف يجب أن يتكون من 9 أرقام';
      });
      return false;
    }
 
    setState(() {
      _errorMessage = '';
    });
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('صفحة الدفع', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF007DfC),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);         
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Center(
              child: Icon(
                Icons.payment,
                size: 100,
                color: Color(0xFF007DfC),
              ),
            ),
            SizedBox(height: 20),

            Text(
              'المبلغ الإجمالي: \$${widget.price.toString()}',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            Text('اسم صاحب البطاقة'),
            TextField(
              controller: _cardHolderController,
              decoration: InputDecoration(
                hintText: 'أدخل اسم صاحب البطاقة',
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF007DfC)),
                ),
              ),
            ),
            SizedBox(height: 20),
 
            Text('رقم البطاقة'),
            TextField(
              controller: _cardNumberController,
              decoration: InputDecoration(
                hintText: 'أدخل رقم البطاقة',
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF007DfC)),
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),

            Text('رقم الهاتف'),
            TextField(
              controller: _phoneController,
              decoration: InputDecoration(
                hintText: 'أدخل رقم الهاتف',
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF007DfC)),
                ),
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 20),

            Text('العنوان'),
            TextField(
              controller: _addressController,
              decoration: InputDecoration(
                hintText: 'أدخل العنوان',
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF007DfC)),
                ),
              ),
            ),
            SizedBox(height: 20),

            // بالتقسيط أو كاش
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('الدفع بالتقسيط'),
                Checkbox(
                  value: _isInstallment,
                  onChanged: (bool? value) {
                    setState(() {
                      _isInstallment = value!;

                      // لخزن المبلغ
                      _remainingAmount = _isInstallment
                          ? widget.price / 2  // تقسيط السعر إلى نصفين
                          : 0;
                    });
                  },
                ),
              ],
            ),
            if (_isInstallment)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'المبلغ المتبقي بعد التقسيط: \$${(_remainingAmount).toStringAsFixed(0)}',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            SizedBox(height: 30),

          
            if (_errorMessage.isNotEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  _errorMessage,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

            // زر الدفع
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // التحقق من المدخلات قبل الدفع
                  if (_validateFields()) {
                    setState(() {
                      _paymentSuccess = true;         
                    });

                    showDialog(
                      context: context,
                      barrierDismissible: false,  
                      builder: (BuildContext context) {
                        // بعد ضغط دفع
                        return Dialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  // حق صح
                                  Icons.check_circle,
                                  color: Colors.blue,
                                  size: 80,
                                ),
                                SizedBox(height: 20),
                                Text(
                                  'تم الدفع بنجاح!',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'تمت عملية الدفع بنجاح. شكراً لك!',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 20),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);   
                                  },
                                  child: Text('موافق',style: TextStyle(color: Colors.white,fontSize: 10),),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.blue,
                                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  }
                },
                child: Text('دفع الآن', style: TextStyle(fontSize: 18, color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF007DfC),  
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  textStyle: TextStyle(fontSize: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
