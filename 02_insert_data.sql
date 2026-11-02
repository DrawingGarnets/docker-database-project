-- Byte Bistro Recipe Database: sample data
-- Runs after CREATE_TABLES.sql (C sorts before D, so order is kept).

INSERT INTO users (name, email, role) VALUES
('Maria Lopez', 'maria@bytebistro.com', 'owner'),
('Daniel Reyes', 'daniel@bytebistro.com', 'head_chef'),
('Sam Carter', 'sam@bytebistro.com', 'staff'),
('Priya Nair', 'priya@bytebistro.com', 'staff');

INSERT INTO categories (name) VALUES
('Appetizer'), ('Entree'), ('Dessert'), ('Side');

INSERT INTO recipes (name, description, category_id, status, servings, prep_time_min, cook_time_min, created_by) VALUES
('Garlic Bread', 'Toasted baguette with garlic butter', 1, 'current', 6, 10, 10, 2),
('Chicken Alfredo', 'Fettuccine in a creamy parmesan sauce with chicken', 2, 'current', 4, 15, 25, 2),
('Chocolate Lava Cake', 'Warm chocolate cake with a molten center', 3, 'planned', 4, 15, 12, 2),
('Caesar Salad', 'Romaine, parmesan, and croutons', 4, 'archived', 4, 10, 0, 1);

INSERT INTO ingredients (name) VALUES
('Butter'), ('Garlic'), ('Baguette'), ('Chicken Breast'), ('Fettuccine'), ('Heavy Cream'),
('Parmesan'), ('Dark Chocolate'), ('Eggs'), ('Sugar'), ('Romaine Lettuce'), ('Croutons');

INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity, unit) VALUES
(1, 3, 1, 'loaf'), (1, 1, 4, 'tbsp'), (1, 2, 3, 'clove'),
(2, 4, 2, 'lb'), (2, 5, 1, 'lb'), (2, 6, 2, 'cup'), (2, 7, 1, 'cup'), (2, 1, 4, 'tbsp'), (2, 2, 4, 'clove'),
(3, 8, 6, 'oz'), (3, 1, 8, 'tbsp'), (3, 9, 4, 'each'), (3, 10, 0.5, 'cup'),
(4, 11, 2, 'head'), (4, 7, 0.5, 'cup'), (4, 12, 1, 'cup');

INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(1, 1, 'Preheat oven to 400F.'),
(1, 2, 'Mix softened butter with minced garlic.'),
(1, 3, 'Slice baguette, spread garlic butter, and bake 10 minutes.'),
(2, 1, 'Boil fettuccine until al dente.'),
(2, 2, 'Cook chicken in a pan until done, then slice.'),
(2, 3, 'Melt butter with garlic, add cream, and simmer.'),
(2, 4, 'Stir in parmesan, then toss with pasta and chicken.'),
(3, 1, 'Melt chocolate and butter together.'),
(3, 2, 'Whisk in eggs and sugar.'),
(3, 3, 'Pour into ramekins and bake at 425F for 12 minutes.'),
(4, 1, 'Chop romaine and place in a bowl.'),
(4, 2, 'Top with parmesan and croutons, then toss.');