//
//  HomeView.swift
//  Restaurant Advisor
//
//  Created by Anis  on 05/03/2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView{
            VStack{
        Text("RESTADVISOR !")
        .font(.system(size: 50.0))
        .fontWeight(.black)
        .padding(.top, 10)
        .padding(.bottom, 160)
                
        NavigationLink{
            LoginView()
        }label :{
            Text("Se connecter ")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 220, height: 60)
                .background(Color.black)
                .cornerRadius(35.0)
                .padding(.bottom, 80)
        }
            
                
        NavigationLink{
            RegisterView()
        }label :{
            Text("S'inscrire ")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 220, height: 60)
                .background(Color.black)
                .cornerRadius(35.0)
                .padding(.bottom, 80)
                }
        
        NavigationLink{
                AddRestaurantView()
            }label :{
            Text("Ajouter un restaurant ")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 220, height: 60)
                .background(Color.black)
                .cornerRadius(35.0)
                .padding(.bottom, 80)
                }

       
    }
    }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct RestausButtonContent: View {
    var body: some View {
        Text("Restaurants ")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color.black)
            .cornerRadius(35.0)
    }
}

struct RegisterrButtonContent: View {
    var body: some View {
        Text("S'inscrire ")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 160, height: 60)
            .background(Color.black)
            .cornerRadius(35.0)
    }
}

struct LoginnButtonContent: View {
    var body: some View {
        Text("Se connecter ")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color.black)
            .cornerRadius(35.0)
    }
}


