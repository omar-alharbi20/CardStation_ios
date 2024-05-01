//
//  searchpage.swift
//  test app
//
//  Created by عبد الملك الضاري on 09/10/1445 AH.
//

import SwiftUI

struct Search1 {
    let name, image, description, supplier: String
    let price: Double
    let width, height, diameter: String
}

class SearchManager: ObservableObject {
    @Published var searchText = ""
    
    var filteredProducts: [Product] {
        searchText.isEmpty ? products : products.filter {
            $0.name.lowercased().contains(searchText.lowercased())
        }
    }
    
    let products = [
        Product(name: "Xbox", image: "fn2", description: "Xbox game Card", supplier: "Store", price: 25, width: "200 cm ", height: "135 cm", diameter: "105 cm"),
        Product(name: "Sony", image: "fn3", description: "sony game Card", supplier: "Store", price: 50, width: "200 cm ", height: "135 cm", diameter: "105 cm"),
        Product(name: "iTunes", image: "fn1", description: "iTunes game Card", supplier: "Store", price: 100, width: "200 cm ", height: "135 cm", diameter: "105 cm"),
        Product(name: "Steam", image: "fn4", description: "Steam game Card ", supplier: "Store", price: 100, width: "200 cm ", height: "135 cm", diameter: "105 cm"),
        Product(name: "Google play", image: "fn5", description: "Google play Card", supplier: "Store", price: 25, width: "200 cm ", height: "135 cm", diameter: "105 cm"),
        Product(name: "Nintendo Switch", image: "fn6", description: "Nintendo Switch Card", supplier: "Store", price: 35, width: "200 cm ", height: "135 cm", diameter: "105 cm")
    ]
}

struct SearchPage: View {
    @StateObject private var searchManager = SearchManager()

    var body: some View {
        NavigationView {
            VStack(spacing: 16) {
                SearchBar(text: $searchManager.searchText)
                List {
                    ForEach(searchManager.filteredProducts, id: \.name) { product in
                        NavigationLink(destination: ProductDetailsView(product: product)) {
                            ProductRow(product: product)
                        }
                    }
                    if searchManager.filteredProducts.isEmpty {
                        Text("No results found")
                            .foregroundColor(.gray)
                    }
                }
                .searchable(text: $searchManager.searchText)
            }
            .navigationTitle("Search")
        }
    }
}

struct SearchBar: View {
    @Binding var text: String

    var body: some View {
        TextField("Search products...", text: $text)
            .padding(.horizontal)
            .frame(maxWidth: .infinity)
            .background(Color(UIColor.systemGray6))
            .cornerRadius(10)
    }
}

struct ProductRow: View {
    let product: Product

    var body: some View {
        HStack(spacing: 10) {
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                .background(Color(UIColor.systemGray4))
                .cornerRadius(8)
            VStack(alignment: .leading) {
                Text(product.name)
                    .font(.headline)
                Text(product.description)
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct ProductDetailsView: View {
    var product: Product

    var body: some View {
        ScrollView {
            VStack {
                Image(product.image)
                    .resizable()
                    .ignoresSafeArea(edges: .top)
                    .frame(height: 300)
                    .padding(.top, 63)
                    .padding(.trailing, 20)

                VStack(alignment: .leading) {
                    HStack {
                        Text(product.name)
                            .font(.title2 .bold())
                        Spacer()
                        Text("$\(product.price).00")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .padding(.horizontal)
                            .background(Color("kSecondary"))
                            .cornerRadius(12)
                    }
                    .padding(.vertical)

                    HStack {
                        ForEach(0..<4) { _ in
                            Image(systemName: "star.fill")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.yellow)
                        }
                        Text("(4)")
                            .foregroundColor(.gray)
                        Spacer()
                        Button(action: {}, label: {
                            Image(systemName: "minus.square")
                        })
                        Text("1")
                        Button(action: {}, label: {
                            Image(systemName: "plus.square.fill")
                                .foregroundColor(Color("kPrimary"))
                        })
                    }
                    Text("Description")
                        .font(.title3)
                        .fontWeight(.medium)
                    Text(product.description)
                    Spacer()
                }
                .padding()
                .background(.white)
                .cornerRadius(20)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SearchPage()
    }
}
