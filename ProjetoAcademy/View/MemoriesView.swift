//
//  MemoriesView.swift
//  ProjetoAcademy
//
//  Created by Rebeca Maria de Morais Guimarães on 13/05/25.
//
import SwiftUI
import SwiftData

struct MemoriesView: View {
    @Binding var path: [Route]
    @Query private var memories: [Memoria] // Busca todas as memórias do banco de dados.
    @Environment(\.modelContext) private var modelContext
    @State private var isEditing = false

    private let columns = [
        GridItem(.flexible(), spacing: 5),
        GridItem(.flexible(), spacing: 5)
    ]

    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .edgesIgnoringSafeArea(.all)

            VStack {
                if memories.isEmpty {
                    Spacer()
                    emptyStateView
                    Spacer()
                } else {
                    ScrollView {
                        LazyVGrid(columns: columns, spacing: 10) {
                            ForEach(memories) { memory in
                                MemoryCell(memory: memory, isEditing: isEditing) {
                                    delete(memory: memory)
                                }
                            }
                        }
                        .padding(.horizontal, 10)
                    }
                }
            }
            .navigationTitle("Memórias")
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        path.removeAll()
                    }) {
                        HStack {
                            Image(systemName: "chevron.left")
                            Text("Home")
                        }
                        .foregroundColor(.red)
                    }
                }

                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        withAnimation {
                            isEditing.toggle()
                        }
                    }) {
                        Image(systemName: isEditing ? "checkmark.circle" : "slider.horizontal.3")
                    }
                }
            }
        }
        .onAppear {
            print("DEBUG: MemoriesView apareceu. Memórias salvas: \(memories.count)")
        }
    }

    private var emptyStateView: some View {
        VStack(spacing: 12) {
            Image(systemName: "photo.on.rectangle.angled")
                .resizable()
                .scaledToFit()
                .frame(width: 180, height: 180)
                .foregroundColor(.gray)

            Text("Nenhuma memória registrada ainda")
                .font(.title)
                .foregroundColor(.gray)
                .bold()
                .multilineTextAlignment(.center)
        }
    }

    private func delete(memory: Memoria) {
        withAnimation {
            modelContext.delete(memory)
            do {
                try modelContext.save()
            } catch {
                print("Erro ao deletar memória: \(error.localizedDescription)")
            }
        }
    }
}

private struct MemoryCell: View {
    let memory: Memoria
    let isEditing: Bool
    let onDelete: () -> Void

    var body: some View {
        VStack {
            if let data = memory.photo, let uiImage = UIImage(data: data) {
                Image(uiImage: uiImage)
                    .resizable()
                    .scaledToFit()
                    .frame(minHeight: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .overlay(alignment: .topTrailing) {
                        if isEditing {
                            Button(action: onDelete) {
                                Image(systemName: "xmark.circle.fill")
                                    .foregroundColor(.red)
                                    .padding(6)
                            }
                        }
                    }
            } else {
                placeholderImage
            }
        }
    }

    private var placeholderImage: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.gray.opacity(0.2))
            .frame(height: 200)
            .overlay {
                Image(systemName: "photo")
                    .font(.largeTitle)
                    .foregroundColor(.gray)
            }
    }
}
