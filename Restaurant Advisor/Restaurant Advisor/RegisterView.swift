//
//  RegisterView.swift
//  Restaurant Advisor
//
//  Created by Anis  on 05/03/2022.
//

import SwiftUI


struct RegisterView: View {
    
    @State var email: String = ""
    @State var username: String = ""
    @State var name: String = ""
    @State var firstname: String = ""
    @State var age: String = ""
    @State var password: String = ""
    
    var body: some View {
        ZStack {
                VStack {
                    ScrollView {
                    TitreInscription()
                    UsernameTextField(username: $username)
                    FirstNameTextField(firstname: $firstname)
                    NameTextField(name: $name)
                    EmailTextFieldd(email: $email)
                    AgeTextField(age: $age)
                    PasswordSecureFieldd(password: $password)
                    }
                    Button(action: {
                    
                    }) {
                        RegisterButtonContent()
                    }
                }
                .padding()
               
            }
        }
    }


    struct RegisterView_Previews: PreviewProvider {
        static var previews: some View {
            RegisterView()
        }
    }

    struct TitreInscription: View {
        var body: some View {
            Text("Bienvenue !")
                .font(.system(size: 50.0))
                .fontWeight(.black)
                .padding(.top, 50)
                .padding(.bottom, 60)
            Text("Inscription :")
                .font(.system(size: 33.0))
                .fontWeight(.light)
                .padding(.bottom, 20)
        }
    }

    struct RegisterButtonContent: View {
        var body: some View {
            Text("INSCRIPTION")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 220, height: 60)
                .background(Color.black)
                .cornerRadius(35.0)
        }
    }

struct UsernameTextField: View {
    
    @Binding var username: String
    
    var body: some View {
        TextField(("Nom d'utilisateur"), text: $username)
            .padding()
            .background(Grisclair)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}

struct FirstNameTextField: View {
    
    @Binding var firstname: String
    
    var body: some View {
        TextField(("Nom"), text: $firstname)
            .padding()
            .background(Grisclair)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}

struct NameTextField: View {
    
    @Binding var name: String
    
    var body: some View {
        TextField(("Prénom"), text: $name)
            .padding()
            .background(Grisclair)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}

struct AgeTextField: View {
    
    @Binding var age: String
    
    var body: some View {
        TextField(("Age"), text: $age)
            .padding()
            .background(Grisclair)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}


struct EmailTextFieldd: View {
    
    @Binding var email: String
    
    var body: some View {
        TextField(("Email"), text: $email)
            .padding()
            .background(Grisclair)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}

struct PasswordSecureFieldd: View {
    
    @Binding var password: String
    
    var body: some View {
        SecureField("Mot de passe", text: $password)
            .padding()
            .background(Grisclair)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
            
    }}
