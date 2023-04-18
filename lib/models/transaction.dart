class Transaction {
  final int id;
  final String to;
  final String amount;
  final String date;
  final String description;

  Transaction(
    this.id,
    this.to,
    this.amount,
    this.date,
    this.description,
  );
}

final List<Transaction> transactions = [
  Transaction(
    1,
    'Jumia',
    '350.000',
    '30 Juli 2022 12:13',
    'Shopping',
  ),
  Transaction(
    2,
    'Wego',
    '950.000',
    '12 Juli 2022 12:13',
    'Hotel',
  ),
  Transaction(
    3,
    "L'Astragale",
    '150.000',
    '13 Juli 2022 12:13',
    'Restaurent'
    
  ),
  Transaction(
    4,
    'Sara',
    '300',
    '10 Juli 2022 12:13',
    'Sent Money',
  ),
  Transaction(
    5,
    'Joseph',
    '780',
    '20 Juli 2022 12:13',
    'Recieved Money',
  )
];
