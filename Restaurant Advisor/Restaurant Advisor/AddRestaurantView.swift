//
//  AddRestaurantView.swift
//  Restaurant Advisor
//
//  Created by Anis  on 05/03/2022.
//

import SwiftUI


struct AddRestaurantView: View {
    
    @State var restauname: String = ""
    @State var restaudescription: String = ""
    @State var grade: String = ""
    @State var localization: String = ""
    @State var phone_number: String = ""
    @State var website: String = ""
    @State var horaires: String = ""
    @StateObject var restaurantModel = RestaurantModel()
    
    var body: some View {
        NavigationView{
        ZStack {
                VStack {
                    ScrollView {
                    TitreAjoutRestaurant()
                    RestauNameTextField(restauname: $restauname)
                    RestauDescriptionTextField(restaudescription: $restaudescription)
                    RestauGradeTextField(grade: $grade)
                    RestauAdresseTextField(localization: $localization)
                    RestauSiteTextField(website: $website)
                    RestauTelephoneTextField(phone_number: $phone_number)
                    RestauHorairesTextField(horaires: $horaires)
                    
                        Button(action: {restaurantModel.AddRestaurant(params: ["name":restauname, "description":restaudescription, "grade":grade, "localization":localization, "phone_number":phone_number, "website":website, "hours":horaires, ], callback: {response in print(response.rawValue)} )
                        }) {
                            NavigationLink(destination: HomeView()){
                                AjoutRestaurantButtonContent()
                            }
                        }
                        
                    }
                    
                }
                .padding()
               
            }
        }
    }
    }


    struct AddRestaurantView_Previews: PreviewProvider {
        static var previews: some View {
            AddRestaurantView()
        }
    }

    struct TitreAjoutRestaurant: View {
        var body: some View {
            Text("RESTO !")
                .font(.system(size: 50.0))
                .fontWeight(.black)
                .padding(.top, 20)
                .padding(.bottom, 30)
            Text("Nouveau restaurant :")
                .font(.system(size: 33.0))
                .fontWeight(.light)
                .padding(.bottom, 20)
        }
    }

    struct AjoutRestaurantButtonContent: View {
        var body: some View {
            Text("Ajouter ")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 220, height: 60)
                .background(Color.black)
                .cornerRadius(35.0)
        }
    }

struct RestauNameTextField: View {
    
    @Binding var restauname: String
    
    var body: some View {
        TextField(("Nom du restaurant"), text: $restauname)
            .padding()
            .background(Grisclair)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}

struct RestauDescriptionTextField: View {
    
    @Binding var restaudescription: String
    
    var body: some View {
        TextField(("Description"), text: $restaudescription)
            .padding()
            .background(Grisclair)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}

struct RestauGradeTextField: View {
    
    @Binding var grade: String
    
    var body: some View {
        TextField(("Grade"), text: $grade)
            .padding()
            .background(Grisclair)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}

struct RestauAdresseTextField: View {
    
    @Binding var localization: String
    
    var body: some View {
        TextField(("Adresse"), text: $localization)
            .padding()
            .background(Grisclair)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}


struct RestauTelephoneTextField: View {
    
    @Binding var phone_number: String
    
    var body: some View {
        TextField(("Téléphone"), text: $phone_number)
            .padding()
            .background(Grisclair)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}

struct RestauSiteTextField: View {
    
    @Binding var website: String
    
    var body: some View {
        TextField("Site Web", text: $website)
            .padding()
            .background(Grisclair)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
            
    }}


struct RestauHorairesTextField: View {
    
    @Binding var horaires: String
    
    var body: some View {
        TextField("Horaires", text: $horaires)
            .padding()
            .background(Grisclair)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
            
    }}
