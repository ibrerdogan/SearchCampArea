//
//  CampAreaDetailView.swift
//  SearchCampArea
//
//  Created by İbrahim Erdogan on 24.05.2022.
//

import SwiftUI

struct CampAreaDetailView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            VStack{
                VStack {
                    TabView{
                        Image(systemName: "person.fill")
                            .tabItem {
                                Text("")
                            }
                        Image(systemName: "person")
                            .tabItem {
                                Text("")
                            }
                        Image(systemName: "person.fill")
                            .tabItem {
                                Text("")
                            }
                        
                    }
                    .tabViewStyle(.page(indexDisplayMode: .always))
                .indexViewStyle(.page(backgroundDisplayMode: .always))
                }
                VStack {
                    ScrollView{
                        VStack{
                            HStack{
                                Spacer()
                                Text("Adress").bold()
                                Spacer()
                            }
                            .padding()
                            .background(Color(.init(gray: 0.3, alpha: 0.2)))
                            HStack{
                                Text("Adress")
                                Spacer()
                            }.padding()
                        }
                        VStack{
                            HStack{
                                Spacer()
                                Text("Telefon").bold()
                                Spacer()
                            }
                            .padding()
                            .background(Color(.init(gray: 0.3, alpha: 0.2)))
                            HStack{
                                Text("Adress")
                                Spacer()
                            }.padding()
                        }
                        VStack{
                            HStack{
                                Spacer()
                                Text("Adress").bold()
                                Spacer()
                            }
                            .padding()
                            .background(Color(.init(gray: 0.3, alpha: 0.2)))
                            HStack{
                                Text("Adress")
                                Spacer()
                            }.padding()
                        }
                        VStack{
                            HStack{
                                Spacer()
                                Text("Adress").bold()
                                Spacer()
                            }
                            .padding()
                            .background(Color(.init(gray: 0.3, alpha: 0.2)))
                            HStack{
                                Text("Adress")
                                Spacer()
                            }.padding()
                        }
                        VStack{
                            HStack{
                                Spacer()
                                Button(role: .destructive) {
                                    presentationMode.wrappedValue.dismiss()
                                } label: {
                                    Text("Cancel")
                                }

                                Spacer()
                            }
                            .padding()
                            .background(Color(.init(gray: 0.3, alpha: 0.2)))
                           
                        }
                    }
                }
            }
        }
       
    }
}

struct CampAreaDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CampAreaDetailView()
    }
}
