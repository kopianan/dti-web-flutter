import 'package:dti_web/domain/core/country_nationality.dart';

class Constant {
  static String header =
      "eyJhbGciOiJSUzI1NiIsImtpZCI6ImRjMzdkNTkzNjVjNjIyOGI4Y2NkYWNhNTM2MGFjMjRkMDQxNWMxZWEiLCJ0eXAiOiJKV1QifQ.eyJuYW1lIjoiRG9vclRvSUQgRGV2ZWxvcG1lbnQiLCJpc3MiOiJodHRwczovL3NlY3VyZXRva2VuLmdvb2dsZS5jb20vZG9vcnRvaWQtbW9iaWxlIiwiYXVkIjoiZG9vcnRvaWQtbW9iaWxlIiwiYXV0aF90aW1lIjoxNjY3Mjg4MzE1LCJ1c2VyX2lkIjoiTTJnNTFhN0xBVGFBcUV2ekhZU0JPdmREZ1BFMiIsInN1YiI6Ik0yZzUxYTdMQVRhQXFFdnpIWVNCT3ZkRGdQRTIiLCJpYXQiOjE2NjcyODgzMTUsImV4cCI6MTY2NzI5MTkxNSwiZW1haWwiOiJkdGlAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOmZhbHNlLCJmaXJlYmFzZSI6eyJpZGVudGl0aWVzIjp7ImVtYWlsIjpbImR0aUBnbWFpbC5jb20iXX0sInNpZ25faW5fcHJvdmlkZXIiOiJwYXNzd29yZCJ9fQ.Cr6JwhoMH4_kkTzRJAJYnFm4eU_NQaUuwrqIh32Ik-2cuZveas-x8OTwQ2Xo8pt3MCxsRCtYwPJuwzFF5f-uixjBNpiqFxgbeVSlK7CUK_7fLyBsBjL-txpIYIcuP7ZVgsZABFSDxasiVqZ-zmlop31q9frVo-hwi08takMvue-hyxxLgvrnCcTLw-hHKnP8t0YG2C6zpkILSBZIXoozclrV5HyxnOCZp7FPdtC4IOdp1YGOtnb8HG_IOjmsdj5nNN-LO34_dDN73YGUtLcn3ILF1_WXXiHPavl-eXwG6MLvoiZhgBSxM-YZox68Na3WsuyrTwsGp6zN25tEQZwSqA";
  // static String get baseUrl =>
  //     'http://127.0.0.1:5002/doortoid-mobile/us-central1/api';
  // static String get baseUploadUrl =>
  //     'http://127.0.0.1:5002/doortoid-mobile/us-central1';

  static List<String> getMultipleVisaDuration() {
    return ['6 Months', '1 Year', '2 Years', '3 Years', '4 Years', '5 Years'];
  }

  static List<CountryNationality> getCountries() {
    final countries = <CountryNationality>[
      CountryNationality(name: 'Afghanistan', code: 'AF'),
      CountryNationality(name: 'Åland Islands', code: 'AX'),
      CountryNationality(name: 'Albania', code: 'AL'),
      CountryNationality(name: 'Algeria', code: 'DZ'),
      CountryNationality(name: 'American Samoa', code: 'AS'),
      CountryNationality(name: 'Andorra', code: 'AD'),
      CountryNationality(name: 'Angola', code: 'AO'),
      CountryNationality(name: 'Anguilla', code: 'AI'),
      CountryNationality(name: 'Antarctica', code: 'AQ'),
      CountryNationality(name: 'Antigua and Barbuda', code: 'AG'),
      CountryNationality(name: 'Argentina', code: 'AR'),
      CountryNationality(name: 'Armenia', code: 'AM'),
      CountryNationality(name: 'Aruba', code: 'AW'),
      CountryNationality(name: 'Australia', code: 'AU'),
      CountryNationality(name: 'Austria', code: 'AT'),
      CountryNationality(name: 'Azerbaijan', code: 'AZ'),
      CountryNationality(name: 'Bahamas', code: 'BS'),
      CountryNationality(name: 'Bahrain', code: 'BH'),
      CountryNationality(name: 'Bangladesh', code: 'BD'),
      CountryNationality(name: 'Barbados', code: 'BB'),
      CountryNationality(name: 'Belarus', code: 'BY'),
      CountryNationality(name: 'Belgium', code: 'BE'),
      CountryNationality(name: 'Belize', code: 'BZ'),
      CountryNationality(name: 'Benin', code: 'BJ'),
      CountryNationality(name: 'Bermuda', code: 'BM'),
      CountryNationality(name: 'Bhutan', code: 'BT'),
      CountryNationality(name: 'Bolivia', code: 'BO'),
      CountryNationality(name: 'Bosnia and Herzegovina', code: 'BA'),
      CountryNationality(name: 'Botswana', code: 'BW'),
      CountryNationality(name: 'Bouvet Island', code: 'BV'),
      CountryNationality(name: 'Brazil', code: 'BR'),
      CountryNationality(name: 'British Antarctic Territory', code: 'BQ'),
      CountryNationality(name: 'British Indian Ocean Territory', code: 'IO'),
      CountryNationality(name: 'British Virgin Islands', code: 'VG'),
      CountryNationality(name: 'Brunei', code: 'BN'),
      CountryNationality(name: 'Bulgaria', code: 'BG'),
      CountryNationality(name: 'Burkina Faso', code: 'BF'),
      CountryNationality(name: 'Burundi', code: 'BI'),
      CountryNationality(name: 'Cambodia', code: 'KH'),
      CountryNationality(name: 'Cameroon', code: 'CM'),
      CountryNationality(name: 'Canada', code: 'CA'),
      CountryNationality(name: 'Canton and Enderbury Islands', code: 'CT'),
      CountryNationality(name: 'Cape Verde', code: 'CV'),
      CountryNationality(name: 'Cayman Islands', code: 'KY'),
      CountryNationality(name: 'Central African Republic', code: 'CF'),
      CountryNationality(name: 'Chad', code: 'TD'),
      CountryNationality(name: 'Chile', code: 'CL'),
      CountryNationality(name: 'China', code: 'CN'),
      CountryNationality(name: 'Christmas Island', code: 'CX'),
      CountryNationality(name: 'Cocos [Keeling] Islands', code: 'CC'),
      CountryNationality(name: 'Colombia', code: 'CO'),
      CountryNationality(name: 'Comoros', code: 'KM'),
      CountryNationality(name: 'Congo - Brazzaville', code: 'CG'),
      CountryNationality(name: 'Congo - Kinshasa', code: 'CD'),
      CountryNationality(name: 'Cook Islands', code: 'CK'),
      CountryNationality(name: 'Costa Rica', code: 'CR'),
      CountryNationality(name: 'Côte d’Ivoire', code: 'CI'),
      CountryNationality(name: 'Croatia', code: 'HR'),
      CountryNationality(name: 'Cuba', code: 'CU'),
      CountryNationality(name: 'Curaçao', code: 'CW'),
      CountryNationality(name: 'Cyprus', code: 'CY'),
      CountryNationality(name: 'Czech Republic', code: 'CZ'),
      CountryNationality(name: 'Denmark', code: 'DK'),
      CountryNationality(name: 'Djibouti', code: 'DJ'),
      CountryNationality(name: 'Dominica', code: 'DM'),
      CountryNationality(name: 'Dominican Republic', code: 'DO'),
      CountryNationality(name: 'Dronning Maud Land', code: 'NQ'),
      CountryNationality(name: 'Ecuador', code: 'EC'),
      CountryNationality(name: 'Egypt', code: 'EG'),
      CountryNationality(name: 'El Salvador', code: 'SV'),
      CountryNationality(name: 'Equatorial Guinea', code: 'GQ'),
      CountryNationality(name: 'Eritrea', code: 'ER'),
      CountryNationality(name: 'Estonia', code: 'EE'),
      CountryNationality(name: 'Ethiopia', code: 'ET'),
      CountryNationality(name: 'Falkland Islands', code: 'FK'),
      CountryNationality(name: 'Faroe Islands', code: 'FO'),
      CountryNationality(name: 'Fiji', code: 'FJ'),
      CountryNationality(name: 'Finland', code: 'FI'),
      CountryNationality(name: 'France', code: 'FR'),
      CountryNationality(name: 'French Guiana', code: 'GF'),
      CountryNationality(name: 'French Polynesia', code: 'PF'),
      CountryNationality(
          name: 'French Southern and Antarctic Territories', code: 'FQ'),
      CountryNationality(name: 'French Southern Territories', code: 'TF'),
      CountryNationality(name: 'Gabon', code: 'GA'),
      CountryNationality(name: 'Gambia', code: 'GM'),
      CountryNationality(name: 'Georgia', code: 'GE'),
      CountryNationality(name: 'Germany', code: 'DE'),
      CountryNationality(name: 'Ghana', code: 'GH'),
      CountryNationality(name: 'Gibraltar', code: 'GI'),
      CountryNationality(name: 'Greece', code: 'GR'),
      CountryNationality(name: 'Greenland', code: 'GL'),
      CountryNationality(name: 'Grenada', code: 'GD'),
      CountryNationality(name: 'Guadeloupe', code: 'GP'),
      CountryNationality(name: 'Guam', code: 'GU'),
      CountryNationality(name: 'Guatemala', code: 'GT'),
      CountryNationality(name: 'Guernsey', code: 'GG'),
      CountryNationality(name: 'Guinea', code: 'GN'),
      CountryNationality(name: 'Guinea-Bissau', code: 'GW'),
      CountryNationality(name: 'Guyana', code: 'GY'),
      CountryNationality(name: 'Haiti', code: 'HT'),
      CountryNationality(name: 'Heard Island and McDonald Islands', code: 'HM'),
      CountryNationality(name: 'Honduras', code: 'HN'),
      CountryNationality(name: 'Hong Kong SAR China', code: 'HK'),
      CountryNationality(name: 'Hungary', code: 'HU'),
      CountryNationality(name: 'Iceland', code: 'IS'),
      CountryNationality(name: 'India', code: 'IN'),
      CountryNationality(name: 'Indonesia', code: 'ID'),
      CountryNationality(name: 'Iran', code: 'IR'),
      CountryNationality(name: 'Iraq', code: 'IQ'),
      CountryNationality(name: 'Ireland', code: 'IE'),
      CountryNationality(name: 'Isle of Man', code: 'IM'),
      CountryNationality(name: 'Israel', code: 'IL'),
      CountryNationality(name: 'Italy', code: 'IT'),
      CountryNationality(name: 'Jamaica', code: 'JM'),
      CountryNationality(name: 'Japan', code: 'JP'),
      CountryNationality(name: 'Jersey', code: 'JE'),
      CountryNationality(name: 'Johnston Island', code: 'JT'),
      CountryNationality(name: 'Jordan', code: 'JO'),
      CountryNationality(name: 'Kazakhstan', code: 'KZ'),
      CountryNationality(name: 'Kenya', code: 'KE'),
      CountryNationality(name: 'Kiribati', code: 'KI'),
      CountryNationality(name: 'Kuwait', code: 'KW'),
      CountryNationality(name: 'Kyrgyzstan', code: 'KG'),
      CountryNationality(name: 'Laos', code: 'LA'),
      CountryNationality(name: 'Latvia', code: 'LV'),
      CountryNationality(name: 'Lebanon', code: 'LB'),
      CountryNationality(name: 'Lesotho', code: 'LS'),
      CountryNationality(name: 'Liberia', code: 'LR'),
      CountryNationality(name: 'Libya', code: 'LY'),
      CountryNationality(name: 'Liechtenstein', code: 'LI'),
      CountryNationality(name: 'Lithuania', code: 'LT'),
      CountryNationality(name: 'Luxembourg', code: 'LU'),
      CountryNationality(name: 'Macau SAR China', code: 'MO'),
      CountryNationality(name: 'Macedonia', code: 'MK'),
      CountryNationality(name: 'Madagascar', code: 'MG'),
      CountryNationality(name: 'Malawi', code: 'MW'),
      CountryNationality(name: 'Malaysia', code: 'MY'),
      CountryNationality(name: 'Maldives', code: 'MV'),
      CountryNationality(name: 'Mali', code: 'ML'),
      CountryNationality(name: 'Malta', code: 'MT'),
      CountryNationality(name: 'Marshall Islands', code: 'MH'),
      CountryNationality(name: 'Martinique', code: 'MQ'),
      CountryNationality(name: 'Mauritania', code: 'MR'),
      CountryNationality(name: 'Mauritius', code: 'MU'),
      CountryNationality(name: 'Mayotte', code: 'YT'),
      CountryNationality(name: 'Metropolitan France', code: 'FX'),
      CountryNationality(name: 'Mexico', code: 'MX'),
      CountryNationality(name: 'Micronesia', code: 'FM'),
      CountryNationality(name: 'Midway Islands', code: 'MI'),
      CountryNationality(name: 'Moldova', code: 'MD'),
      CountryNationality(name: 'Monaco', code: 'MC'),
      CountryNationality(name: 'Mongolia', code: 'MN'),
      CountryNationality(name: 'Montenegro', code: 'ME'),
      CountryNationality(name: 'Montserrat', code: 'MS'),
      CountryNationality(name: 'Morocco', code: 'MA'),
      CountryNationality(name: 'Mozambique', code: 'MZ'),
      CountryNationality(name: 'Myanmar [Burma]', code: 'MM'),
      CountryNationality(name: 'Namibia', code: 'NA'),
      CountryNationality(name: 'Nauru', code: 'NR'),
      CountryNationality(name: 'Nepal', code: 'NP'),
      CountryNationality(name: 'Netherlands', code: 'NL'),
      CountryNationality(name: 'Netherlands Antilles', code: 'AN'),
      CountryNationality(name: 'Neutral Zone', code: 'NT'),
      CountryNationality(name: 'New Caledonia', code: 'NC'),
      CountryNationality(name: 'New Zealand', code: 'NZ'),
      CountryNationality(name: 'Nicaragua', code: 'NI'),
      CountryNationality(name: 'Niger', code: 'NE'),
      CountryNationality(name: 'Nigeria', code: 'NG'),
      CountryNationality(name: 'Niue', code: 'NU'),
      CountryNationality(name: 'Norfolk Island', code: 'NF'),
      CountryNationality(name: 'North Korea', code: 'KP'),
      CountryNationality(name: 'North Vietnam', code: 'VD'),
      CountryNationality(name: 'Northern Mariana Islands', code: 'MP'),
      CountryNationality(name: 'Norway', code: 'NO'),
      CountryNationality(name: 'Oman', code: 'OM'),
      CountryNationality(name: 'Pacific Islands Trust Territory', code: 'PC'),
      CountryNationality(name: 'Pakistan', code: 'PK'),
      CountryNationality(name: 'Palau', code: 'PW'),
      CountryNationality(name: 'Palestinian Territories', code: 'PS'),
      CountryNationality(name: 'Panama', code: 'PA'),
      CountryNationality(name: 'Panama Canal Zone', code: 'PZ'),
      CountryNationality(name: 'Papua New Guinea', code: 'PG'),
      CountryNationality(name: 'Paraguay', code: 'PY'),
      CountryNationality(name: 'Peru', code: 'PE'),
      CountryNationality(name: 'Philippines', code: 'PH'),
      CountryNationality(name: 'Pitcairn Islands', code: 'PN'),
      CountryNationality(name: 'Poland', code: 'PL'),
      CountryNationality(name: 'Portugal', code: 'PT'),
      CountryNationality(name: 'Puerto Rico', code: 'PR'),
      CountryNationality(name: 'Qatar', code: 'QA'),
      CountryNationality(name: 'Réunion', code: 'RE'),
      CountryNationality(name: 'Romania', code: 'RO'),
      CountryNationality(name: 'Russia', code: 'RU'),
      CountryNationality(name: 'Rwanda', code: 'RW'),
      CountryNationality(name: 'Saint Barthélemy', code: 'BL'),
      CountryNationality(name: 'Saint Helena', code: 'SH'),
      CountryNationality(name: 'Saint Kitts and Nevis', code: 'KN'),
      CountryNationality(name: 'Saint Lucia', code: 'LC'),
      CountryNationality(name: 'Saint Martin', code: 'MF'),
      CountryNationality(name: 'Saint Pierre and Miquelon', code: 'PM'),
      CountryNationality(name: 'Saint Vincent and the Grenadines', code: 'VC'),
      CountryNationality(name: 'Samoa', code: 'WS'),
      CountryNationality(name: 'San Marino', code: 'SM'),
      CountryNationality(name: 'São Tomé and Príncipe', code: 'ST'),
      CountryNationality(name: 'Saudi Arabia', code: 'SA'),
      CountryNationality(name: 'Senegal', code: 'SN'),
      CountryNationality(name: 'Serbia', code: 'RS'),
      CountryNationality(name: 'Serbia and Montenegro', code: 'CS'),
      CountryNationality(name: 'Seychelles', code: 'SC'),
      CountryNationality(name: 'Sierra Leone', code: 'SL'),
      CountryNationality(name: 'Singapore', code: 'SG'),
      CountryNationality(name: 'Slovakia', code: 'SK'),
      CountryNationality(name: 'Slovenia', code: 'SI'),
      CountryNationality(name: 'Solomon Islands', code: 'SB'),
      CountryNationality(name: 'Somalia', code: 'SO'),
      CountryNationality(name: 'South Africa', code: 'ZA'),
      CountryNationality(
          name: 'South Georgia and the South Sandwich Islands', code: 'GS'),
      CountryNationality(name: 'South Korea', code: 'KR'),
      CountryNationality(name: 'Spain', code: 'ES'),
      CountryNationality(name: 'Sri Lanka', code: 'LK'),
      CountryNationality(name: 'Sudan', code: 'SD'),
      CountryNationality(name: 'Suriname', code: 'SR'),
      CountryNationality(name: 'Svalbard and Jan Mayen', code: 'SJ'),
      CountryNationality(name: 'Swaziland', code: 'SZ'),
      CountryNationality(name: 'Sweden', code: 'SE'),
      CountryNationality(name: 'Switzerland', code: 'CH'),
      CountryNationality(name: 'Syria', code: 'SY'),
      CountryNationality(name: 'Taiwan', code: 'TW'),
      CountryNationality(name: 'Tajikistan', code: 'TJ'),
      CountryNationality(name: 'Tanzania', code: 'TZ'),
      CountryNationality(name: 'Thailand', code: 'TH'),
      CountryNationality(name: 'Timor-Leste', code: 'TL'),
      CountryNationality(name: 'Togo', code: 'TG'),
      CountryNationality(name: 'Tokelau', code: 'TK'),
      CountryNationality(name: 'Tonga', code: 'TO'),
      CountryNationality(name: 'Trinidad and Tobago', code: 'TT'),
      CountryNationality(name: 'Tunisia', code: 'TN'),
      CountryNationality(name: 'Turkey', code: 'TR'),
      CountryNationality(name: 'Turkmenistan', code: 'TM'),
      CountryNationality(name: 'Turks and Caicos Islands', code: 'TC'),
      CountryNationality(name: 'Tuvalu', code: 'TV'),
      CountryNationality(name: 'U.S. Minor Outlying Islands', code: 'UM'),
      CountryNationality(
          name: 'U.S. Miscellaneous Pacific Islands', code: 'PU'),
      CountryNationality(name: 'U.S. Virgin Islands', code: 'VI'),
      CountryNationality(name: 'Uganda', code: 'UG'),
      CountryNationality(name: 'Ukraine', code: 'UA'),
      CountryNationality(
          name: 'Union of Soviet Socialist Republics', code: 'SU'),
      CountryNationality(name: 'United Arab Emirates', code: 'AE'),
      CountryNationality(name: 'United Kingdom', code: 'GB'),
      CountryNationality(name: 'United States', code: 'US'),
      CountryNationality(name: 'Uruguay', code: 'UY'),
      CountryNationality(name: 'Uzbekistan', code: 'UZ'),
      CountryNationality(name: 'Vanuatu', code: 'VU'),
      CountryNationality(name: 'Vatican City', code: 'VA'),
      CountryNationality(name: 'Venezuela', code: 'VE'),
      CountryNationality(name: 'Vietnam', code: 'VN'),
      CountryNationality(name: 'Wake Island', code: 'WK'),
      CountryNationality(name: 'Wallis and Futuna', code: 'WF'),
      CountryNationality(name: 'Western Sahara', code: 'EH'),
      CountryNationality(name: 'Yemen', code: 'YE'),
      CountryNationality(name: 'Zambia', code: 'ZM'),
      CountryNationality(name: 'Zimbabwe', code: 'ZW'),
    ];

    return countries;
  }
}
