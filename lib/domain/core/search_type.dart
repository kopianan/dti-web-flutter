enum SearchType {
  application(0),
  applicationDraft(1),
  corpApplication(2),
  corpApplicationDraft(3),
  feedback(4),
  customer(5),
  contactUse(6);

  const SearchType(this.searchTypeIndex);
  final int searchTypeIndex;

  int get getSearchTypeIndex => searchTypeIndex;
}
