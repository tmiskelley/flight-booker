#   Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Airport.create(
  [
    { name: "ATL"},
    { name: "DFW"},
    { name: "DEN"},
    { name: "ORD"},
    { name: "LAX"},
    { name: "NYC"},
    { name: "DTW"}
  ]
)

Flight.create(
  [
    { departure_id: 1, destination_id: 2, date: "2023-10-15", duration: 3},
    { departure_id: 1, destination_id: 3, date: "2024-03-07", duration: 2},
    { departure_id: 1, destination_id: 4, date: "2024-11-22", duration: 4},
    { departure_id: 1, destination_id: 5, date: "2025-06-18", duration: 1},
    { departure_id: 1, destination_id: 6, date: "2025-12-03", duration: 3},
    { departure_id: 1, destination_id: 7, date: "2026-09-09", duration: 2},
    
    { departure_id: 2, destination_id: 1, date: "2023-10-15", duration: 3},
    { departure_id: 2, destination_id: 3, date: "2024-03-07", duration: 2},
    { departure_id: 2, destination_id: 4, date: "2024-11-22", duration: 4},
    { departure_id: 2, destination_id: 5, date: "2025-06-18", duration: 1},
    { departure_id: 2, destination_id: 6, date: "2025-12-03", duration: 3},
    { departure_id: 2, destination_id: 7, date: "2026-09-09", duration: 2},

    { departure_id: 3, destination_id: 1, date: "2023-10-15", duration: 3},
    { departure_id: 3, destination_id: 2, date: "2024-03-07", duration: 2},
    { departure_id: 3, destination_id: 4, date: "2024-11-22", duration: 4},
    { departure_id: 3, destination_id: 5, date: "2025-06-18", duration: 1},
    { departure_id: 3, destination_id: 6, date: "2025-12-03", duration: 3},
    { departure_id: 3, destination_id: 7, date: "2026-09-09", duration: 2},

    { departure_id: 4, destination_id: 1, date: "2023-10-15", duration: 3},
    { departure_id: 4, destination_id: 2, date: "2024-03-07", duration: 2},
    { departure_id: 4, destination_id: 3, date: "2024-11-22", duration: 4},
    { departure_id: 4, destination_id: 5, date: "2025-06-18", duration: 1},
    { departure_id: 4, destination_id: 6, date: "2025-12-03", duration: 3},
    { departure_id: 4, destination_id: 7, date: "2026-09-09", duration: 2},

    { departure_id: 5, destination_id: 1, date: "2023-10-15", duration: 3},
    { departure_id: 5, destination_id: 2, date: "2024-03-07", duration: 2},
    { departure_id: 5, destination_id: 3, date: "2024-11-22", duration: 4},
    { departure_id: 5, destination_id: 4, date: "2025-06-18", duration: 1},
    { departure_id: 5, destination_id: 6, date: "2025-12-03", duration: 3},
    { departure_id: 5, destination_id: 7, date: "2026-09-09", duration: 2},

    { departure_id: 6, destination_id: 1, date: "2023-10-15", duration: 3},
    { departure_id: 6, destination_id: 2, date: "2024-03-07", duration: 2},
    { departure_id: 6, destination_id: 3, date: "2024-11-22", duration: 4},
    { departure_id: 6, destination_id: 4, date: "2025-06-18", duration: 1},
    { departure_id: 6, destination_id: 5, date: "2025-12-03", duration: 3},
    { departure_id: 6, destination_id: 7, date: "2026-09-09", duration: 2},

    { departure_id: 7, destination_id: 1, date: "2023-10-15", duration: 3},
    { departure_id: 7, destination_id: 2, date: "2024-03-07", duration: 2},
    { departure_id: 7, destination_id: 3, date: "2024-11-22", duration: 4},
    { departure_id: 7, destination_id: 4, date: "2025-06-18", duration: 1},
    { departure_id: 7, destination_id: 5, date: "2025-12-03", duration: 3},
    { departure_id: 7, destination_id: 6, date: "2026-09-09", duration: 2},
  ]
)
