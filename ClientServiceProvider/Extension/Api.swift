//
//  Api.swift
//  Resolutek_Agent
//
//  Created by Amar Patil on 08/12/20.
//

import Foundation
import Alamofire

typealias Complete = ((_ x: Bool) -> (Void))
typealias ApiResponse = ((_ response: [String:Any]?, _ message: String?) -> (Void))
typealias jsonArrayResponse = ((_ response: [[String:Any]]?, _ message: String?) -> (Void))



//MARK: -- Login Module --
class Api {
    
    static func registration(_ param: [String:Any],_ header:[String:String], apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Email Url -- \(Configurator.baseURL+ApiEndPoints.registration)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.registration, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
        
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["success"] as? Int) == 0  {
                        apiResponse(nil, response["Message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    static func verifyEmail(_ param: [String:Any],_ header:[String:String], apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Email Url -- \(Configurator.baseURL+ApiEndPoints.verifyEmail)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.verifyEmail, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
        
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["success"] as? Int) == 0  {
                        apiResponse(nil, response["message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    static func loginAPI(_ param: [String:Any],_ header:[String:String], apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Email Url -- \(Configurator.baseURL+ApiEndPoints.login)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.login, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
        
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["success"] as? Int) == 0  {
                        apiResponse(nil, response["message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    static func getServicesProviderList(_ param: [String:Any],_ header:[String:String], apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Email Url -- \(Configurator.baseURL+ApiEndPoints.servicesProviderList)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.servicesProviderList, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
        
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["success"] as? Int) == 0  {
                        apiResponse(nil, response["message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    static func getServicesProviderHistoryList(_ param: [String:Any],_ header:[String:String], apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Email Url -- \(Configurator.baseURL+ApiEndPoints.servicesProviderHistory)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.servicesProviderHistory, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
        
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["success"] as? Int) == 0  {
                        apiResponse(nil, response["message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    static func getServicesProviderHistoryDetails(_ param: [String:Any],_ header:[String:String], apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Email Url -- \(Configurator.baseURL+ApiEndPoints.servicesProviderDeatils)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.servicesProviderDeatils, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
        
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["success"] as? Int) == 0  {
                        apiResponse(nil, response["message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    static func addServicesProvider(_ param: [String:Any],_ header:[String:String], apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Email Url -- \(Configurator.baseURL+ApiEndPoints.addServicesProvider)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.addServicesProvider, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
        
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["success"] as? Int) == 0  {
                        apiResponse(nil, response["message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
  
    
    static func editServicesProvider(_ param: [String:Any],_ header:[String:String], apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Email Url -- \(Configurator.baseURL+ApiEndPoints.editServiceProvider)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.editServiceProvider, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
        
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["success"] as? Int) == 0  {
                        apiResponse(nil, response["message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    static func addBusiness(_ param: [String:Any],_ header:[String:String], apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Email Url -- \(Configurator.baseURL+ApiEndPoints.addBusiness)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.addBusiness, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
        
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["success"] as? Int) == 0  {
                        apiResponse(nil, response["message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    
    static func getDashBoard(_ param: [String:Any],_ header:[String:String], apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Email Url -- \(Configurator.baseURL+ApiEndPoints.getDashBoard)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.getDashBoard, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
        
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["success"] as? Int) == 0  {
                        apiResponse(nil, response["message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    
    static func addSpace(_ param: [String:Any],_ header:[String:String], apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Email Url -- \(Configurator.baseURL+ApiEndPoints.addSpace)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.addSpace, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
        
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["success"] as? Int) == 0  {
                        apiResponse(nil, response["message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    static func viewFacilities(_ param: [String:Any],_ header:[String:String], apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Email Url -- \(Configurator.baseURL+ApiEndPoints.viewFacilities)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.viewFacilities, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
        
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["success"] as? Int) == 0  {
                        apiResponse(nil, response["message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    
    static func facilitiesSpace(_ param: [String:Any],_ header:[String:String], apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Email Url -- \(Configurator.baseURL+ApiEndPoints.facilitiesSpace)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.facilitiesSpace, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
        
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["success"] as? Int) == 0  {
                        apiResponse(nil, response["message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    
    
    static func getProfileDetails(_ param: [String:Any],_ header:[String:String], apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Email Url -- \(Configurator.baseURL+ApiEndPoints.getProfileDetails)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.getProfileDetails, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
        
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["success"] as? Int) == 0  {
                        apiResponse(nil, response["message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    
    static func updateProfile(_ param: [String:Any],_ header:[String:String], apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Email Url -- \(Configurator.baseURL+ApiEndPoints.updateProfile)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.updateProfile, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
        
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["success"] as? Int) == 0  {
                        apiResponse(nil, response["message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    
    
    static func deleteServiceProvider(_ param: [String:Any],_ header:[String:String], apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Email Url -- \(Configurator.baseURL+ApiEndPoints.deleteServiceProvider)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.deleteServiceProvider, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
        
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["success"] as? Int) == 0  {
                        apiResponse(nil, response["message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    
    static func deleteServiceProviderSpace(_ param: [String:Any],_ header:[String:String], apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Email Url -- \(Configurator.baseURL+ApiEndPoints.deleteServiceProviderSpace)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.deleteServiceProviderSpace, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: URLEncoding.default) { (response, error) -> (Void) in
        
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["success"] as? Int) == 0  {
                        apiResponse(nil, response["message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    
    
    static func deleteSpace(_ param: [String:Any],_ header:[String:String], apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Email Url -- \(Configurator.baseURL+ApiEndPoints.deleteSpace)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.deleteSpace, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: JSONEncoding.default) { (response, error) -> (Void) in
        
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["success"] as? Int) == 0  {
                        apiResponse(nil, response["message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    static func deleteBusiness(_ param: [String:Any],_ header:[String:String], apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Email Url -- \(Configurator.baseURL+ApiEndPoints.deleteBusiness)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.deleteBusiness, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: JSONEncoding.default) { (response, error) -> (Void) in
        
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["success"] as? Int) == 0  {
                        apiResponse(nil, response["message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    
    static func editBusiness(_ param: [String:Any],_ header:[String:String], apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Email Url -- \(Configurator.baseURL+ApiEndPoints.editBusiness)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.editBusiness, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: JSONEncoding.default) { (response, error) -> (Void) in
        
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["success"] as? Int) == 0  {
                        apiResponse(nil, response["message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    


static func getSpaceTimeSlots(_ param: [String:Any],_ header:[String:String], apiResponse:@escaping(ApiResponse)) {
    
    ManageHudder.sharedInstance.startActivityIndicator()
   //  showLoader()
    print("Email Url -- \(Configurator.baseURL+ApiEndPoints.getTimeSpaceSlots)")
    APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.getTimeSpaceSlots, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: JSONEncoding.default) { (response, error) -> (Void) in
    
        ManageHudder.sharedInstance.stopActivityIndicator()
   //   hideLoader()
        if nil != error
        {
            AlertFunctions.showAlert(message: (error?.localizedDescription)!)
        } else {
            if  let response = response as? [String:Any] {
                print("Verify  Res -- \(response)")
                if  (response["success"] as? Int) == 0  {
                    apiResponse(nil, response["message"] as? String ?? "" )
                } else {
                    apiResponse(response, nil)
                }
            } else {
                apiResponse(nil, "Error in json format")
            }
        }
    }
}
    
    
    static func comapirTimeSlots(_ param: [String:Any],_ header:[String:String], apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Email Url -- \(Configurator.baseURL+ApiEndPoints.timeSlotChecking)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.timeSlotChecking, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: JSONEncoding.default) { (response, error) -> (Void) in
        
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["success"] as? Int) == 0  {
                        apiResponse(nil, response["message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }

    
    static func getSpaceServices(_ param: [String:Any],_ header:[String:String], apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Email Url -- \(Configurator.baseURL+ApiEndPoints.getServiceSpace)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.getServiceSpace, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: JSONEncoding.default) { (response, error) -> (Void) in
        
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["success"] as? Int) == 0  {
                        apiResponse(nil, response["message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
    
    static func getBilling(_ param: [String:Any],_ header:[String:String], apiResponse:@escaping(ApiResponse)) {
        
        ManageHudder.sharedInstance.startActivityIndicator()
       //  showLoader()
        print("Email Url -- \(Configurator.baseURL+ApiEndPoints.getBiling)")
        APIMaster.sharedInstance.apiRequestWithObject(urlString: ApiEndPoints.getBiling, httpMethod: .post, info: param, requestHeaders: header, parmEncodingType: JSONEncoding.default) { (response, error) -> (Void) in
        
            ManageHudder.sharedInstance.stopActivityIndicator()
       //   hideLoader()
            if nil != error
            {
                AlertFunctions.showAlert(message: (error?.localizedDescription)!)
            } else {
                if  let response = response as? [String:Any] {
                    print("Verify  Res -- \(response)")
                    if  (response["success"] as? Int) == 0  {
                        apiResponse(nil, response["message"] as? String ?? "" )
                    } else {
                        apiResponse(response, nil)
                    }
                } else {
                    apiResponse(nil, "Error in json format")
                }
            }
        }
    }
        


}


