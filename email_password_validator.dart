import 'package:airway_flutter/Pages/User_onboard3.dart';
import 'package:flutter_test/flutter_test.dart';


void main(){
  test('name cannot be empty', (){
    var result = NameFieldValidator.validator('');
    expect(result, 'Name is required');
  });

  test('Email cannot be empty', (){
    var result = EmailFieldValidator.validator('');
    expect(result, 'Email is required');
  });
  
  test('non-empty name returns null', (){
    var result = NameFieldValidator.validator('gautham');
    expect(result, '');
  });

  test('non-empty email returns null', (){
    var result = EmailFieldValidator.validator('gautham@email.com');
    expect(result, '');
  });

  test('Phone number cannot be empty', (){
    var result = PhoneFieldValidator.validator('');
    expect(result, 'Phone number is required');
  });

  test('Invalid Phone number', (){
    var result = PhoneFieldValidator.validator('123456789');
    expect(result, 'Invalid Phone number');
  });
}