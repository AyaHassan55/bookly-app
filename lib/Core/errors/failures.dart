// ignore: depend_on_referenced_packages
import 'package:dio/dio.dart';
abstract class Failure{
  final String errMessage;
const Failure(this.errMessage);
}


class ServerFailure extends Failure{
  ServerFailure(super.errMessage);
  factory ServerFailure.fromDioError(DioException dioError){
      switch(dioError.type){

        case DioExceptionType.connectionTimeout:
          return ServerFailure('Connection timeout with ApiServer');
          
        case DioExceptionType.sendTimeout:
           return ServerFailure('send timeout with ApiServer');

        case DioExceptionType.receiveTimeout:
          return ServerFailure('Receive timeout with ApiServer');
        case DioExceptionType.badCertificate:
          return ServerFailure('Connection timeout with ApiServer');
        case DioExceptionType.badResponse:
          return ServerFailure.fromResponse(dioError.response!.statusCode!, dioError.response!.data);

        case DioExceptionType.cancel:
          return ServerFailure('Response to ApiServer was canceled');

        case DioExceptionType.connectionError:
          return ServerFailure('No Internet Connection ');

        case DioExceptionType.unknown:
          return ServerFailure('Unexpected Error');
        default:
        return ServerFailure('Oops, try later');  

      }
  }
  factory ServerFailure.fromResponse(int statusCode , dynamic response){
    if(statusCode == 400 || statusCode == 401||statusCode == 403){
      return ServerFailure(response['error']['message']);
    }else if(statusCode==404){
      return ServerFailure('Your Request not found');
    }else if(statusCode==500){
      return ServerFailure('Internal Server error ,please try later');
    }else{
      return ServerFailure('Opps There was an error');
    }
  }
}