class MainState {
  final int activePage;
  MainState({
    this.activePage = 0,
  });

  MainState copyWith({
    int? activePage,
  }) {
    return MainState(
      activePage: activePage ?? this.activePage,
    );
  }
}
