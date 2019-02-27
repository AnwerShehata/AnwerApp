import 'package:flutter/material.dart';

class My_Stepper extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<My_Stepper> {

  int _currentStep = 0 ;
  

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: Colors.purple  ,   // الون الاساسي للطبيق
        brightness: Brightness.light ,
      ),
      home:  new Scaffold(
        
        appBar: AppBar(
          title: Text("Stepper"), elevation: 0, centerTitle: true,
        ),
        
        body: Stepper(
          steps: _mySteps(),
          currentStep: this._currentStep,
          onStepTapped: (step){
            setState(() {
              this._currentStep = step;
            });
          },
          //==== عند الضغط علي الخطوة التالية
          onStepContinue: (){
            setState(() {
              if(this._currentStep < this._mySteps().length -1){
                this._currentStep = this._currentStep +1;
              }else{
                print("Completed check fields") ;
              }
            });
          },

          //==== عند الضغط علي رز Cancel
          onStepCancel: (){
            setState(() {
                if(this._currentStep > 0){
                  this._currentStep = this._currentStep -1;
                }else{
                  this._currentStep = 0;
                }
            });
          },
        ),





      ),
    );
  }

  //===== هنا الستة التي تحتوي علي الخطوات
  List<Step> _mySteps(){
    List<Step> _steps = [

      Step(
          title: Text("Step 1"),
          content: TextField(),
        isActive: _currentStep > 0
      ),

      Step(
          title: Text("Step 2"),
          content: TextField(),
        isActive: _currentStep > 1
      ),

      Step(
          title: Text("Step 3"),
          content: TextField(),
          isActive: _currentStep > 2
      ),

      Step(
          title: Text("Step 4"),
          content: TextField(),
          isActive: _currentStep > 3
      ),
    ];
    return _steps;
  }
}