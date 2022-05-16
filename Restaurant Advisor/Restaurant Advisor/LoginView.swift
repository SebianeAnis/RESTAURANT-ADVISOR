//
//  LoginView.swift
//  Restaurant Advisor
//
//  Created by Anis  on 05/03/2022.
//

import SwiftUI

let Grisclair = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0)

struct LoginView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        ZStack {
                VStack {
                    ScrollView {
                    TitreConnexion()
                    EmailTextField(email: $email)
                    PasswordSecureField(password: $password)
                    }
                    Button(action: {
                    
                    }) {
                        LoginButtonContent()
                    }
                }
                .padding()
               
            }
        }
    }


    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
        }
    }

    struct TitreConnexion: View {
        var body: some View {
            Text("Bonjour !")
                .font(.system(size: 50.0))
                .fontWeight(.black)
                .padding(.top, 50)
                .padding(.bottom, 120)
            Text("Connexion :")
                .font(.system(size: 33.0))
                .fontWeight(.light)
                .padding(.bottom, 20)
        }
    }

    struct LoginButtonContent: View {
        var body: some View {
            Text("CONNEXION")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 220, height: 60)
                .background(Color.black)
                .cornerRadius(35.0)
        }
    }

    

    struct EmailTextField: View {
        
        @Binding var email: String
        
        var body: some View {
            TextField(("Email"), text: $email)
                .padding()
                .background(Grisclair)
                .cornerRadius(5.0)
                .padding(.top, 50)
                .padding(.bottom, 20)
        }
    }

    struct PasswordSecureField: View {
        
        @Binding var password: String
        
        var body: some View {
            SecureField("Mot de passe", text: $password)
                .padding()
                .background(Grisclair)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
                
        }}
