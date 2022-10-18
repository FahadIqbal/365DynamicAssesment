import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:assesment_365/constants.dart';
import 'package:assesment_365/models/account_model.dart';

class ApiService {
  Future<List<Value>?> getAccounts() async {
    try {
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.accountsEndpoint);
    //  print("url :: $url");
      var token = "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsIng1dCI6IjJaUXBKM1VwYmpBWVhZR2FYRUpsOGxWMFRPSSIsImtpZCI6IjJaUXBKM1VwYmpBWVhZR2FYRUpsOGxWMFRPSSJ9.eyJhdWQiOiJodHRwczovL29yZzAzMWU2YTU3LmFwaS5jcm00LmR5bmFtaWNzLmNvbS8iLCJpc3MiOiJodHRwczovL3N0cy53aW5kb3dzLm5ldC8wNWQ0YWM0My1hM2IxLTRiYjktYTlhMi1mM2QxODY5NTYxYWEvIiwiaWF0IjoxNjY1OTM4NTQyLCJuYmYiOjE2NjU5Mzg1NDIsImV4cCI6MTY2NTk0MzgxNSwiYWNyIjoiMSIsImFpbyI6IkFWUUFxLzhUQUFBQU5iY1NLdDRxc1gyU1JHM2lzaUxOKyt5NHIvdXdKc1BRS1NzUGpYemVnNTIvcEV5VnhrTXZGeGswdDZNV2NVenVwKzhWOXdveFg4VWhKeUkyVEJIRFY3RitLcU5wOWFTU1Q2VVlkdnp4YzNvPSIsImFtciI6WyJwd2QiLCJtZmEiXSwiYXBwaWQiOiJlNDJiMWJkOC0zN2MzLTQwNjMtODhmNi03ZGI1MWIzYTk0YWQiLCJhcHBpZGFjciI6IjAiLCJmYW1pbHlfbmFtZSI6IklxYmFsIiwiZ2l2ZW5fbmFtZSI6IkZhaGFkIiwiaXBhZGRyIjoiMTAzLjE4LjIyLjE0NyIsIm5hbWUiOiJGYWhhZCBJcWJhbCIsIm9pZCI6Ijk4ODRmNWUwLWFjY2ItNGQ4NS1iOTczLTMxY2I1NzFkNzQ0NiIsInB1aWQiOiIxMDAzMjAwMjNERTM2QTJDIiwicmgiOiIwLkFVNEFRNnpVQmJHanVVdXBvdlBSaHBWaHFnY0FBQUFBQUFBQXdBQUFBQUFBQUFDREFBTS4iLCJzY3AiOiJ1c2VyX2ltcGVyc29uYXRpb24iLCJzdWIiOiJFZkk3NE5ycHNXUU9UajMtZWh3Vk4tU0ExVXpmc0NPX2hOUkpaemtxOWE4IiwidGlkIjoiMDVkNGFjNDMtYTNiMS00YmI5LWE5YTItZjNkMTg2OTU2MWFhIiwidW5pcXVlX25hbWUiOiJGYWhhZElxYmFsQGZhaGFkaXFiYWx0cmlhbC5vbm1pY3Jvc29mdC5jb20iLCJ1cG4iOiJGYWhhZElxYmFsQGZhaGFkaXFiYWx0cmlhbC5vbm1pY3Jvc29mdC5jb20iLCJ1dGkiOiJ6MzlWbDEzNnBFLUhQY1d1QTFzLUFBIiwidmVyIjoiMS4wIn0.d2-yxBLUyWATck5MOzRuM3Tug3N1R36wkY-uFcBrWOVYiPkcudWT57Lq3wRJmEuwojsHrC_gmkyW3SaTv7_7EX9JZ6FjAApMXtT0aSor67oJi6S9OoRelGWEdCPjJDfsxzYicWjcJoYBumAupe2pmbxg0UqvoX2kx76rkNl6a0xnHCFIyn_NXrKZXmq1a8CoyAv_mtC4Na5C5agjX32HvhejBmi4GczhhKJ6qvYxcAfCyOkUwyHl6hZ4rel5zDeZT7Aq00HFXbvLLM_C6rfEPBtrxQAaMvdBXhyIvVxSu-nHr4YrOtO79jMkDLhTfGp8sf5Nrw_BNotpURb_KBWISg";
      var response = await http.get(url,headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      });
    //  print(response.body);
      if (response.statusCode == 200) {
       AccountModel _model = accountModelFromJson(response.body);
        return _model.value;
      }
    } catch (e) {
      log(e.toString());
    }
  }

  Future<List<Value>?> getFilteredRecord(String input) async {
    try {
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.accountsEndpoint + input);
        print("url :: $url");
      var token = "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsIng1dCI6IjJaUXBKM1VwYmpBWVhZR2FYRUpsOGxWMFRPSSIsImtpZCI6IjJaUXBKM1VwYmpBWVhZR2FYRUpsOGxWMFRPSSJ9.eyJhdWQiOiJodHRwczovL29yZzAzMWU2YTU3LmFwaS5jcm00LmR5bmFtaWNzLmNvbS8iLCJpc3MiOiJodHRwczovL3N0cy53aW5kb3dzLm5ldC8wNWQ0YWM0My1hM2IxLTRiYjktYTlhMi1mM2QxODY5NTYxYWEvIiwiaWF0IjoxNjY1OTA4NzIzLCJuYmYiOjE2NjU5MDg3MjMsImV4cCI6MTY2NTkxMzcyOCwiYWNyIjoiMSIsImFpbyI6IkFUUUF5LzhUQUFBQXJROTR6aHE1dmMwaGYvUFFDYkw1OFc3VW5Lc29ENmF6bDV5c0ZoOUNsMGFmQmx0WW1ScjFYclBvWXJ1WExQeFQiLCJhbXIiOlsicHdkIl0sImFwcGlkIjoiZTQyYjFiZDgtMzdjMy00MDYzLTg4ZjYtN2RiNTFiM2E5NGFkIiwiYXBwaWRhY3IiOiIwIiwiZmFtaWx5X25hbWUiOiJJcWJhbCIsImdpdmVuX25hbWUiOiJGYWhhZCIsImlwYWRkciI6IjEwMy4xOC4yMi4xNDciLCJuYW1lIjoiRmFoYWQgSXFiYWwiLCJvaWQiOiI5ODg0ZjVlMC1hY2NiLTRkODUtYjk3My0zMWNiNTcxZDc0NDYiLCJwdWlkIjoiMTAwMzIwMDIzREUzNkEyQyIsInJoIjoiMC5BVTRBUTZ6VUJiR2p1VXVwb3ZQUmhwVmhxZ2NBQUFBQUFBQUF3QUFBQUFBQUFBQ0RBQU0uIiwic2NwIjoidXNlcl9pbXBlcnNvbmF0aW9uIiwic3ViIjoiRWZJNzROcnBzV1FPVGozLWVod1ZOLVNBMVV6ZnNDT19oTlJKWnprcTlhOCIsInRpZCI6IjA1ZDRhYzQzLWEzYjEtNGJiOS1hOWEyLWYzZDE4Njk1NjFhYSIsInVuaXF1ZV9uYW1lIjoiRmFoYWRJcWJhbEBmYWhhZGlxYmFsdHJpYWwub25taWNyb3NvZnQuY29tIiwidXBuIjoiRmFoYWRJcWJhbEBmYWhhZGlxYmFsdHJpYWwub25taWNyb3NvZnQuY29tIiwidXRpIjoiaVJpQ0ZQdFZ1VUdOVzZfWWliQkhBQSIsInZlciI6IjEuMCJ9.lp56tL7Rj-4em7MRiwmv5ga9rZaorlqMYVOpH-WXYlpKmmJX60dmmt2HzzencvrlFEyiiaducALUlzx29fKHZfpmcEMVSBz0hFWIisPfLALvxR-odvH4_Vy1I_5gxYMQvj6E1yLmncEYzstXSN6CB23Bvx0xQ7Dbi2nTij0G9JXwxq8x0SZDBfL_45oUFNLM1d4iDxAf7BWKGeNDlj62f87tgMq94Hfgq7J-xpIbI5QuVuFtsRPMaRTGSTZQrnFtHNrIDssiyz-3TnkIWiFWTAy9PkG20ZS4fn_1gLIrxwmuVa1d1vj3XDRMU2OWo9e6qNJQo95ZVg0seTitNo-EyQ";
      var response = await http.get(url,headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      });
        print(response.body);
      if (response.statusCode == 200) {
        AccountModel _model = accountModelFromJson(response.body);
        return _model.value;
      }
    } catch (e) {
      log(e.toString());
    }
  }
}