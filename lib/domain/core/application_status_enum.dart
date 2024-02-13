enum ApplicationStatusEnum {
  draft("Draft"),
  submitted("Submitted"),
  pending_payment("Pending Payment"),
  paid("Paid"),
  completed("Completed"),
  rejected("Rejected");

  const ApplicationStatusEnum(this.status);
  final String status;
}
