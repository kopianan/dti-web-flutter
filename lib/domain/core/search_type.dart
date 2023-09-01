enum SearchType {
  application(0),
  feedback(1),
  customer(2),
  contactUse(3);

  const SearchType(this.searchTypeIndex);
  final int searchTypeIndex;

  int get getSearchTypeIndex => searchTypeIndex;
}
