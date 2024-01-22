import SwiftUI

struct ExploreView: View {
    
    @State private var showSearchView = false
    @State var viewModel = ExploreViewModel(service: ExploreCourse())
    
    var body: some View {
        NavigationStack {
            if showSearchView {
                SearchView(show: $showSearchView, viewModel: viewModel)
            }
            else {
                ScrollView {
                    SearchAndFilterBar(course: $viewModel.searchCourse)         //we want it to dissapear when we scroll
                        .onTapGesture {
                            withAnimation(.snappy) {
                                showSearchView.toggle()
                            }
                        }
                    LazyVStack(spacing: 32) {    //render items as they appear
                        ForEach(viewModel.courses) { course in
                            NavigationLink(value: course) {
                                ListingView(course: course)
                                    .frame(height: 400)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                        }
                    }
                    .padding()
                }
                .navigationDestination(for: Course.self) { course in
                    ListingDetailView(course: course)
                        .navigationBarBackButtonHidden()
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
