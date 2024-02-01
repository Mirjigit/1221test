//
//  ContentView.swift
//  1221test
//
//  Created by Миржигит Суранбаев on 31/1/24.
//

import SwiftUI
import UIKit

class ViewController: UIView{
    
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    
                    Image(systemName: "atom")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .tint(.green)
                    
                    HStack {
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Text("4.1")
                            .foregroundColor(.black)
                        Text("|")
                            .foregroundColor(.gray)
                        Text("19 отзывов")
                            .foregroundColor(.gray)
                    }
                    .padding(.horizontal)
                    
                    Text("Добавка “Липа” к чаю 200 г")
                        .font(.title)
                        .padding(.horizontal)
                    Spacer(minLength: 15)
                    Text("Испания, Риоха")
                        .foregroundColor(.red)
                        .padding(.horizontal)
                    Spacer(minLength: 15)
                    Text("Описание")
                        .bold()
                        .padding(.horizontal)
                    Spacer(minLength: 5)
                    Text("Флавоноиды липового цвета обладают противовоспалительным действием, способствуют укреплению стенки сосудов.")
                        .padding(.horizontal)
                    Spacer(minLength: 15)
                    Text("Основные характеристики")
                        .bold()
                        .padding(.horizontal)
                    Spacer(minLength: 5)
                    
                        VStack(alignment: .leading) {
                            CharacteristicView(title: "Производство", value: "Россия, Краснодарский край")
                            CharacteristicView(title: "Энергетическая ценность, ккал/100 г", value: "25 ккал, 105 кДж")
                            CharacteristicView(title: "Жиры/100 г", value: "0,1 г")
                            CharacteristicView(title: "Белки/100 г", value: "1,3 г")
                            CharacteristicView(title: "Углеводы/100 г", value: "3,3 г")
                            
                            Button("Все характеристики") {
                            }
                            .foregroundColor(.blue)
                            .padding(.horizontal)
                    }
                    .padding(.horizontal)
                    
                    Spacer()
                    
                        .foregroundColor(.blue)
                    
                    Button("Оставить отзыв") {
                    }
                    .foregroundColor(.green)
                    .padding(.horizontal)
                    
                    HStack {
                        Text("55.9 ₽/шт")
                            .font(.title)
                        Spacer()
                        Stepper(value: .constant(1), in: 1...10) {
                            Text("1 шт")
                        }
                    }
                    .padding(.horizontal)
                    
                    VStack {
                        HStack {
                            Text("Итого: 55.9 ₽")
                                .font(.headline)
                            Spacer()
                            Button(action: {
                            }) {
                                Text("Добавить в корзину")
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(Color.green)
                                    .cornerRadius(10)
                            }
                        }
                        .padding(.horizontal)
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                    }) {
                        Image(systemName: "chevron.left")
                            .tint(.green)
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack {
                        Button(action: {
                        }) {
                            Image(systemName: "tray.full")
                                .tint(.green)
                        }
                        Button(action: {
                        }) {
                            Image(systemName: "square.and.arrow.up")
                                .tint(.green)
                        }
                        Button(action: {
                        }) {
                            Image(systemName: "heart")
                                .tint(.green)
                        }
                    }
                }
            }
        }
    }
}


struct CharacteristicView: View {
    var title: String
    var value: String
    
    var body: some View {
        HStack {
            Text(title)
                .foregroundColor(.black)
                .font(.body)
            Spacer()
            DottedLine()
            Text(value)
                .foregroundColor(.black)
                .font(.body)
        }
        
    }
}

struct DottedLine: View {
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                path.move(to: CGPoint(x: 0, y: geometry.size.height / 2))
                path.addLine(to: CGPoint(x: geometry.size.width, y: geometry.size.height / 2))
            }
            .stroke(style: StrokeStyle(lineWidth: 1, dash: [2]))
            .foregroundColor(.gray)
        }
        .frame(height: 1)
    }
}

#Preview {
    ContentView()
}
