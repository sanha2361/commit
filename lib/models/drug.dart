class Drug {
  final String system;
  final String disease;
  final String drugtype;
  final String drugname;

  Drug(
      {required this.system,
      required this.disease,
      required this.drugtype,
      required this.drugname});
}

/*List druglist=[
    {
      "system":"circ",
      "disease":[
        {"dsname":"hypertension",
         "drugtype":["diuretics","blocker"]
        },
        {"dsname":"MI",
         "drugtype":["diuretics","blocker"]
        }
      ]
    },
    {
      "system":"resp",
      "disease":[
        {"dsname":"pneumonia",
         "drugtype":["antibiotics"]
        }
      ]
    }
  ];*/