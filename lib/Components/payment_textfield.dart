import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//Full Name TextField1
class PaymentTextFields1 extends StatefulWidget {
  final String text;
  final String text1;
  const PaymentTextFields1({Key? key,
    required this.text,
    required this.text1
  }) : super(key: key);

  @override
  State<PaymentTextFields1> createState() => _PaymentTextFields1State();
}
class _PaymentTextFields1State extends State<PaymentTextFields1> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: [
        FilteringTextInputFormatter.singleLineFormatter,
        LengthLimitingTextInputFormatter(30),
      ],
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        label: Text(widget.text),

        filled: true, fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.w),
          borderSide: BorderSide(
            color: const Color(0xFF1A1A1A).withOpacity(0.1),
            width: 1.sp,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.w),
          borderSide: BorderSide(
            color:
            Theme.of(context).colorScheme.primary,
            width: 1.sp,
          ),
        ),
        hintText: widget.text1,
      ),
      );
  }
}


//Card Number TextField2
class PaymentTextFields2 extends StatefulWidget {
  final String text;
  final String text1;
  const PaymentTextFields2({Key? key,
  required this.text,
  required this.text1
  }) : super(key: key);

  @override
  State<PaymentTextFields2> createState() => _PaymentTextFields2State();
}
class _PaymentTextFields2State extends State<PaymentTextFields2> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        CardNumberFormatter(),
      ],
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        label: Text(widget.text),

        filled: true, fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.w),
          borderSide: BorderSide(
            color: const Color(0xFF1A1A1A).withOpacity(0.1),
            width: 1.sp,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.w),
          borderSide: BorderSide(
            color:
            Theme.of(context).colorScheme.primary,
            width: 1.sp,
          ),
        ),
        hintText: widget.text1,
      ),
      maxLength: 19,
    );
  }
}

//Card Number Formatter
class CardNumberFormatter extends TextInputFormatter {
@override
    TextEditingValue formatEditUpdate(
    TextEditingValue previousValue,
    TextEditingValue nextValue,
) {
var inputText = nextValue.text;

    if (nextValue.selection.baseOffset == 0) {
    return nextValue;
}

    var bufferString = StringBuffer();
    for (int i = 0; i < inputText.length; i++) {
    bufferString.write(inputText[i]);
    var nonZeroIndexValue = i + 1;
    if (nonZeroIndexValue % 4 == 0 && nonZeroIndexValue != inputText.length) {
    bufferString.write(' ');
  }
}

    var string = bufferString.toString();
    return nextValue.copyWith(
    text: string,
    selection: TextSelection.collapsed(
    offset: string.length,
    ),
  );
  }
}


//CVV/CVC Number TextField3
class PaymentTextFields3 extends StatefulWidget {
  final String text;
  final String text1;
  const PaymentTextFields3({Key? key,
    required this.text,
    required this.text1
  }) : super(key: key);

  @override
  State<PaymentTextFields3> createState() => _PaymentTextFields3State();
}
class _PaymentTextFields3State extends State<PaymentTextFields3> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: [
        FilteringTextInputFormatter.singleLineFormatter,
        LengthLimitingTextInputFormatter(3),
      ],
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        label: Text(widget.text),

        filled: true, fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.w),
          borderSide: BorderSide(
            color: const Color(0xFF1A1A1A).withOpacity(0.1),
            width: 1.sp,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.w),
          borderSide: BorderSide(
            color:
            Theme.of(context).colorScheme.primary,
            width: 1.sp,
          ),
        ),
        hintText: widget.text1,
      ),

    );
  }
}


//Expiry Date Number TextField4
class PaymentTextFields4 extends StatefulWidget {
  final String text;
  final String text1;
  const PaymentTextFields4({Key? key,
    required this.text,
    required this.text1
  }) : super(key: key);

  @override
  State<PaymentTextFields4> createState() => _PaymentTextFields4State();
}
class _PaymentTextFields4State extends State<PaymentTextFields4> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: [
        FilteringTextInputFormatter.singleLineFormatter,
        LengthLimitingTextInputFormatter(5),
        CardMonthInputFormatter(),
      ],
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        label: Text(widget.text),

        filled: true, fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.w),
          borderSide: BorderSide(
            color: const Color(0xFF1A1A1A).withOpacity(0.1),
            width: 1.sp,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.w),
          borderSide: BorderSide(
            color:
            Theme.of(context).colorScheme.primary,
            width: 1.sp,
          ),
        ),
        hintText: widget.text1,
      ),

    );
  }
}

//Expiry Date Number Formatter
class CardMonthInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var newText = newValue.text;
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }
    var buffer = StringBuffer();
    for (int i = 0; i < newText.length; i++) {
      if (newText[i] != '/') {
        buffer.write(newText[i]);
        if (buffer.length == 2) {
          buffer.write('/');
        }
      }
    }
    var string = buffer.toString();
    return newValue.copyWith(
        text: string,
        selection: TextSelection.collapsed(offset: string.length));
  }
}
