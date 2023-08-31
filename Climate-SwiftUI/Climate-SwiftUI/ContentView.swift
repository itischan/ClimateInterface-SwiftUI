//
//  ContentView.swift
//  Climate-SwiftUI
//
//  Created by ck on 2023-08-30.
//

import SwiftUI

struct ContentView: View {
    @State var isModeChanged:Bool=false
    var body: some View {
        ZStack{
            BackgroundView(colors: isModeChanged ? [.black,.gray]:[.blue,.white])
                        VStack{
                
                Text("London,ON")
                    .font(.system(size: 30, weight: .bold, design: .default))
                    .foregroundColor(.white)
               
                VStack{
                    Spacer()
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180,height: 180)
                    Text("32 °C")
                        .font(.system(size: 40, weight: .medium, design: .default))
                        .padding()
                    Spacer()
                    Spacer()
                  
                    
                }
                Spacer()
                HStack{
                    WeatherView(day: "MON", image: "cloud.drizzle.fill", temperature: 19)
                    WeatherView(day: "TUE", image: "cloud.bolt.fill", temperature: 25)
                    WeatherView(day: "WED", image: "sun.max.fill", temperature: 30)
                    WeatherView(day: "THUR", image: "cloud.drizzle.fill", temperature: 19)
                    WeatherView(day: "FRI", image: "cloud.fill", temperature: 15)
                    WeatherView(day: "SAT", image: "cloud.sun.rain.fill", temperature: 18)
                    WeatherView(day: "SUN", image: "sun.min.fill", temperature: 22)
                    
                    
                }
                
                Button{
                    isModeChanged.toggle()
                    
                }label: {
                    Text("Change day time to night")
                        .frame(width: 280, height: 50)
                        .font(.system(size: 20, weight: .medium, design: .default))
                        .foregroundColor(.white)
                        .background(LinearGradient(colors: [.red,.blue], startPoint: .topLeading, endPoint: .bottomTrailing))
                        .cornerRadius(10)
                   
                }
                Spacer()
                
            }.padding()
           
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherView: View {
    var day:String
    var image:String
    var temperature:Int
    var body: some View {
        VStack(spacing: 15){
            
            Text(day)
            
            Image(systemName: image)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(width: 30,height: 30)
                
            
            Text("\(temperature)°C")
            Spacer()
            
        }
    }
}

struct BackgroundView: View {
    var colors:[Color]
    var body: some View {
        LinearGradient(colors:colors, startPoint: .top, endPoint: .bottom).ignoresSafeArea()
    }
}
