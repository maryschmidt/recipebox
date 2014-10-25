Category.create([
  { name: "brunch" },
  { name: "dinner" },
  { name: "seasonal" },
  { name: "snacks!" },
])

Recipe.create([
  {
    name: "Bolognese",
    description: "Mary's favorite food",
    category_id: Category.where(name: 'dinner').first.id
  },
  {
    name: "Snickerdoodles",
    description: "Magic cookies",
    category_id: Category.where(name: 'snacks!').first.id
  },
  {
    name: "Rice Krispies",
    description: "Buttery deliciousness",
    category_id: Category.where(name: 'snacks!').first.id
  },
  {
    name: "Enchiladas",
    description: "South(western) comfort food",
    category_id: Category.where(name: 'dinner').first.id
  },
  {
    name: "Carbonara",
    description: "Mary's death trap",
    category_id: Category.where(name: 'brunch').first.id
  }
])
