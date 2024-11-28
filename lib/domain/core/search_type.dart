enum SearchType {
  application(0),
  corpApplication(1),
  feedback(2),
  customer(3),
  contactUse(4);

  const SearchType(this.searchTypeIndex);
  final int searchTypeIndex;

  int get getSearchTypeIndex => searchTypeIndex;
}
