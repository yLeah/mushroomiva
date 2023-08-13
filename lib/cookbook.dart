import 'package:flutter/material.dart';
import 'package:mushroomiva/ai.dart';
import 'package:mushroomiva/main.dart';
import 'package:flip_card/flip_card.dart';
import 'globals.dart' as globals;

class Cookbook extends StatefulWidget {
  const Cookbook({super.key, required this.title});
  final String title;
  @override
  State<Cookbook> createState() => _CookbookPageState();
}

class _CookbookPageState extends State<Cookbook> {
  void _onItemTapped(int index) {
    globals.selectedIndex = index;
    if (globals.selectedIndex == 0) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  const AI(title: 'Mushroom Identifying A.I.')));
    } else if (globals.selectedIndex == 2) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const Cookbook(
                    title: "Forager's Cookbook",
                  )));
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const MyHomePage(
                    title: 'Mushroomiva',
                  )));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 0,
      ),
      body: ListView(
        children: <Widget>[
          FlipCard(
            //Chanterelle
            fill: Fill.fillBack,
            direction: FlipDirection.VERTICAL,
            side: CardSide.FRONT,
            front: Card(
              elevation: 10,
              child: SizedBox(
                width: 383,
                height: 450,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(children: <Widget>[
                    Image.asset('assets/cook-chanterelle.jpg'),
                    const Text('Roasted Chanterelle',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold)),
                    const Text('Mushroom and Garlic',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold)),
                    const Text('Pasta',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold))
                  ]),
                ),
              ),
            ),
            back: Card(
              elevation: 10,
              child: SizedBox(
                width: 383,
                height: 450,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: Column(children: const <Widget>[
                      SizedBox(height: 20),
                      Text('Ingredients',
                          style: TextStyle(
                              fontSize: 20, fontStyle: FontStyle.italic)),
                      SizedBox(height: 20),
                      Text(
                          '\u2022 8 ounces (225g) dried pasta (such as fettuccine or linguine)\n'),
                      Text(
                          '\u2022 2 cups fresh chanterelle mushrooms, cleaned and roughly chopped\n'),
                      Text('\u2022 4 cloves garlic, minced\n'),
                      Text('\u2022 2 tablespoons olive oil\n'),
                      Text('\u2022 1 tablespoon butter\n'),
                      Text('\u2022 1/4 cup freshly grated Parmesan cheese\n'),
                      Text('\u2022 2 tablespoons chopped fresh parsley\n'),
                      Text('\u2022 Salt and pepper to taste'),
                      SizedBox(height: 20),
                      Text('Instructions',
                          style: TextStyle(
                              fontSize: 20, fontStyle: FontStyle.italic)),
                      SizedBox(height: 20),
                      Text('1. Preheat your oven to 425°F (220°C).\n'),
                      Text(
                          '2. Cook the pasta according to the package instructions until al dente. Drain and set aside.\n'),
                      Text(
                          '3. While the pasta is cooking, spread the chopped chanterelle mushrooms and minced garlic evenly on a baking sheet. Drizzle with olive oil, sprinkle with salt and pepper, and toss to coat the mushrooms and garlic in the oil.\n'),
                      Text(
                          '4. Roast the mushrooms and garlic in the preheated oven for about 12-15 minutes, or until the mushrooms are tender and slightly browned. Keep an eye on them to prevent burning.\n'),
                      Text(
                          '5. In a large skillet, melt the butter over medium heat. Add the roasted chanterelle mushrooms and garlic to the skillet and sauté for a couple of minutes to infuse the flavors.\n'),
                      Text(
                          '6. Add the cooked pasta to the skillet with the mushrooms and garlic. Toss everything together until well combined, allowing the flavors to meld. If needed, you can add a splash of pasta cooking water to help create a silky sauce.\n'),
                      Text(
                          '7. Remove the skillet from heat and sprinkle the grated Parmesan cheese and chopped parsley over the pasta. Toss once again to distribute the cheese and herbs evenly.\n'),
                      Text(
                          '8. Season with additional salt and pepper to taste. Serve the pasta warm, garnished with some extra Parmesan cheese and parsley, if desired.\n'),
                    ]),
                  ),
                ),
              ),
            ),
          ),
          FlipCard(
            //Hen of the Wood
            fill: Fill.fillBack,
            direction: FlipDirection.VERTICAL,
            side: CardSide.FRONT,
            front: Card(
              elevation: 10,
              child: SizedBox(
                width: 383,
                height: 450,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(children: <Widget>[
                    Image.asset('assets/cook-hen.jpg',
                        height: 240, width: 240, fit: BoxFit.fill),
                    const Text('Grilled Hen of the',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold)),
                    const Text('Woods Mushroom',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold)),
                    const Text('Steaks',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold))
                  ]),
                ),
              ),
            ),
            back: Card(
              elevation: 10,
              child: SizedBox(
                width: 383,
                height: 450,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: Column(children: const <Widget>[
                      SizedBox(height: 20),
                      Text('Ingredients',
                          style: TextStyle(
                              fontSize: 20, fontStyle: FontStyle.italic)),
                      SizedBox(height: 20),
                      Text(
                          '\u2022 1 large Hen of the Woods mushroom (about 1 pound)\n'),
                      Text('\u2022 3 tablespoons olive oil\n'),
                      Text('\u2022 2 tablespoons balsamic vinegar\n'),
                      Text('\u2022 2 cloves garlic, minced\n'),
                      Text('\u2022 1 teaspoon dried thyme\n'),
                      Text('\u2022 Salt and pepper to taste\n'),
                      Text('\u2022 Fresh parsley, chopped (for garnish)\n'),
                      SizedBox(height: 20),
                      Text('Instructions',
                          style: TextStyle(
                              fontSize: 20, fontStyle: FontStyle.italic)),
                      SizedBox(height: 20),
                      Text('1. Preheat a grill to medium-high heat.\n'),
                      Text(
                          '2. Clean the Hen of the Woods mushroom by gently brushing off any dirt or debris. Trim the tough ends of the mushroom and cut it into thick "steaks" about 1 inch thick.\n'),
                      Text(
                          '3. In a small bowl, whisk together the olive oil, balsamic vinegar, minced garlic, dried thyme, salt, and pepper.\n'),
                      Text(
                          '4. Brush both sides of the mushroom steaks generously with the marinade mixture.\n'),
                      Text(
                          '5. Place the mushroom steaks on the preheated grill and cook for about 4-5 minutes on each side, or until they develop grill marks and become tender.\n'),
                      Text(
                          '6. While grilling, baste the mushroom steaks with the remaining marinade to keep them moist and flavorful.\n'),
                      Text(
                          '7. Once the mushroom steaks are cooked through and tender, remove them from the grill and transfer to a serving platter.\n'),
                      Text(
                          '8. Garnish the mushroom steaks with freshly chopped parsley.\n'),
                    ]),
                  ),
                ),
              ),
            ),
          ),
          FlipCard(
            //King Trumpet Mushroom
            fill: Fill.fillBack,
            direction: FlipDirection.VERTICAL,
            side: CardSide.FRONT,
            front: Card(
              elevation: 10,
              child: SizedBox(
                width: 383,
                height: 450,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(children: <Widget>[
                    Image.asset('assets/cook-kingtrumpet.jpg'),
                    const Text('King Trumpet',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold)),
                    const Text('Mushroom Stir-Fry',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold))
                  ]),
                ),
              ),
            ),
            back: Card(
              elevation: 10,
              child: SizedBox(
                width: 383,
                height: 450,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: Column(children: const <Widget>[
                      SizedBox(height: 20),
                      Text('Ingredients',
                          style: TextStyle(
                              fontSize: 20, fontStyle: FontStyle.italic)),
                      SizedBox(height: 20),
                      Text('\u2022 4 king trumpet mushrooms\n'),
                      Text('\u2022 2 tablespoons vegetable oil\n'),
                      Text('\u2022 3 cloves garlic, minced\n'),
                      Text('\u2022 1 small onion, sliced\n'),
                      Text('\u2022 1 red bell pepper, sliced\n'),
                      Text('\u2022 1 green bell pepper, sliced\n'),
                      Text('\u2022 1 tablespoon soy sauce\n'),
                      Text('\u2022 1 tablespoon oyster sauce\n'),
                      Text('\u2022 1 teaspoon cornstarch (optional)\n'),
                      Text('\u2022 Salt and pepper to taste\n'),
                      Text(
                          '\u2022 Fresh cilantro or green onions, chopped (for garnish)'),
                      SizedBox(height: 20),
                      Text('Instructions',
                          style: TextStyle(
                              fontSize: 20, fontStyle: FontStyle.italic)),
                      SizedBox(height: 20),
                      Text(
                          '1. Clean the king trumpet mushrooms by gently wiping them with a damp cloth. Trim off the tough ends and slice them into thin strips.\n'),
                      Text(
                          '2. In a small bowl, whisk together the soy sauce, oyster sauce, and cornstarch (if using) until well combined. Set aside.\n'),
                      Text(
                          '3. Heat the vegetable oil in a large skillet or wok over medium-high heat.\n'),
                      Text(
                          '4. Add the minced garlic to the hot oil and sauté for about 30 seconds, until fragrant.\n'),
                      Text(
                          '5. Add the sliced onions to the skillet and stir-fry for 1-2 minutes until they start to soften.\n'),
                      Text(
                          '6. Add the sliced king trumpet mushrooms, red bell pepper, and green bell pepper to the skillet. Stir-fry for about 5-7 minutes, or until the mushrooms are tender and the peppers are crisp-tender.\n'),
                      Text(
                          '7. Pour the soy sauce mixture over the mushrooms and vegetables. Toss everything together to coat evenly. Cook for an additional 1-2 minutes, allowing the sauce to thicken slightly.\n'),
                      Text(
                          '8. Taste and season with salt and pepper if needed.\n'),
                      Text(
                          '9. Remove the stir-fry from heat and transfer it to a serving dish.\n'),
                      Text(
                          '10. Garnish with freshly chopped cilantro or green onions.\n')
                    ]),
                  ),
                ),
              ),
            ),
          ),
          FlipCard(
            //Lion's Mane
            fill: Fill.fillBack,
            direction: FlipDirection.VERTICAL,
            side: CardSide.FRONT,
            front: Card(
              elevation: 10,
              child: SizedBox(
                width: 383,
                height: 450,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(children: <Widget>[
                    Image.asset('assets/cook-lionmane.jpg'),
                    const Text("Lion's Mane",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold)),
                    const Text('Mushroom Tacos',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold)),
                  ]),
                ),
              ),
            ),
            back: Card(
              elevation: 10,
              child: SizedBox(
                width: 383,
                height: 450,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: Column(children: const <Widget>[
                      SizedBox(height: 20),
                      Text('Ingredients',
                          style: TextStyle(
                              fontSize: 20, fontStyle: FontStyle.italic)),
                      SizedBox(height: 20),
                      Text('\u2022 8 small tortillas (corn or flour)\n'),
                      Text(
                          "\u2022 1 pound Lion's Mane mushrooms, cleaned and sliced\n"),
                      Text('\u2022 2 tablespoons olive oil\n'),
                      Text('\u2022 1 teaspoon ground cumin\n'),
                      Text('\u2022 1 teaspoon smoked paprika\n'),
                      Text(
                          '\u2022 1/2 teaspoon chili powder (adjust to taste)\n'),
                      Text('\u2022 Salt and pepper to taste\n'),
                      Text('\u2022 1 small red onion, thinly sliced\n'),
                      Text(
                          '\u2022 1 jalapeño pepper, thinly sliced (optional)\n'),
                      Text('\u2022 Fresh cilantro leaves, for garnish\n'),
                      Text('\u2022 Lime wedges, for serving\n'),
                      Text('\u2022 1/4 cup plain Greek yogurt\n'),
                      Text('\u2022 1 ripe avocado\n'),
                      Text('\u2022 Juice of 1 lime'),
                      SizedBox(height: 20),
                      Text('Instructions',
                          style: TextStyle(
                              fontSize: 20, fontStyle: FontStyle.italic)),
                      SizedBox(height: 20),
                      Text('1. Preheat the oven to 400°F (200°C).\n'),
                      Text(
                          '2. In a small bowl, combine the olive oil, ground cumin, smoked paprika, chili powder, salt, and pepper.\n'),
                      Text(
                          "3. Place the Lion's Mane mushroom slices on a baking sheet. Drizzle the spice mixture over the mushrooms, ensuring they are evenly coated. Toss gently to combine.\n"),
                      Text(
                          "4. Roast the Lion's Mane mushrooms in the preheated oven for about 15-20 minutes, or until they are tender and slightly browned. Stir halfway through cooking to ensure even browning.\n"),
                      Text(
                          '5. While the mushrooms are roasting, prepare the avocado lime crema. In a blender or food processor, combine the avocado, lime juice, Greek yogurt, and salt. Blend until smooth and creamy. Adjust the lime juice and salt to taste. Transfer the crema to a small bowl.\n'),
                      Text(
                          '6. Warm the tortillas according to package instructions.\n'),
                      Text(
                          "7. Assemble the tacos by spreading a spoonful of the avocado lime crema onto each tortilla. Top with roasted Lion's Mane mushrooms, sliced red onion, jalapeño pepper (if using), and fresh cilantro leaves.\n"),
                      Text(
                          '8. Serve the tacos with lime wedges on the side for squeezing over the top.\n'),
                    ]),
                  ),
                ),
              ),
            ),
          ),
          FlipCard(
            // True Morel
            fill: Fill.fillBack,
            direction: FlipDirection.VERTICAL,
            side: CardSide.FRONT,
            front: Card(
              elevation: 10,
              child: SizedBox(
                width: 383,
                height: 450,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(children: <Widget>[
                    Image.asset('assets/cook-morel.jpg'),
                    const Text('Creamy Morel',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold)),
                    const Text('Mushroom Risotto',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold))
                  ]),
                ),
              ),
            ),
            back: Card(
              elevation: 10,
              child: SizedBox(
                width: 383,
                height: 450,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: Column(children: const <Widget>[
                      SizedBox(height: 20),
                      Text('Ingredients',
                          style: TextStyle(
                              fontSize: 20, fontStyle: FontStyle.italic)),
                      SizedBox(height: 20),
                      Text('\u2022 1 cup dried morel mushrooms\n'),
                      Text('\u2022 4 cups vegetable or chicken broth\n'),
                      Text('\u2022 2 tablespoons butter\n'),
                      Text('\u2022 1 small onion, finely chopped\n'),
                      Text('\u2022 2 cloves garlic, minced\n'),
                      Text('\u2022 1 ½ cups Arborio rice\n'),
                      Text('\u2022 ½ cup dry white wine\n'),
                      Text('\u2022 ½ cup grated Parmesan cheese\n'),
                      Text('\u2022 2 tablespoons chopped fresh parsley\n'),
                      Text('\u2022 Salt and pepper to taste'),
                      SizedBox(height: 20),
                      Text('Instructions',
                          style: TextStyle(
                              fontSize: 20, fontStyle: FontStyle.italic)),
                      SizedBox(height: 20),
                      Text(
                          '1. Place the dried morel mushrooms in a bowl and cover them with boiling water. Let them soak for about 15-20 minutes until they have softened. Drain the mushrooms, reserving the soaking liquid. Rinse the mushrooms under running water to remove any grit. Chop the morels into bite-sized pieces.\n'),
                      Text(
                          '2. In a saucepan, heat the vegetable or chicken broth over medium heat until simmering. Keep it warm on the stovetop while you prepare the risotto.\n'),
                      Text(
                          '3. In a large skillet or Dutch oven, melt the butter over medium heat. Add the chopped onion and minced garlic, and sauté until the onion becomes translucent and fragrant.\n'),
                      Text(
                          '4. Add the Arborio rice to the skillet and stir well to coat it with the butter, onion, and garlic mixture. Toast the rice for about 2 minutes, stirring constantly.\n'),
                      Text(
                          '5. Pour in the white wine and cook, stirring continuously, until the liquid is absorbed.\n'),
                      Text(
                          '6. Begin adding the warm broth to the skillet, one ladleful at a time, stirring constantly until the liquid is absorbed before adding the next ladleful. Continue this process for about 20-25 minutes or until the rice is creamy and al dente.\n'),
                      Text(
                          '7. Stir in the chopped morel mushrooms during the last 5 minutes of cooking.\n'),
                      Text(
                          '8. Once the risotto reaches the desired consistency and the rice is cooked to perfection, remove the skillet from the heat. Stir in the grated Parmesan cheese and chopped parsley. Season with salt and pepper to taste.\n'),
                      Text(
                          '9. Let the risotto rest for a couple of minutes to allow the flavors to meld together.\n'),
                      Text(
                          '10. Serve the creamy morel mushroom risotto warm, garnished with additional grated Parmesan cheese and a sprinkle of fresh parsley.\n')
                    ]),
                  ),
                ),
              ),
            ),
          ),
          FlipCard(
            // Oyster Mushroom
            fill: Fill.fillBack,
            direction: FlipDirection.VERTICAL,
            side: CardSide.FRONT,
            front: Card(
              elevation: 10,
              child: SizedBox(
                width: 383,
                height: 450,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(children: <Widget>[
                    Image.asset('assets/cook-oyster.jpg',
                        height: 240, width: 240, fit: BoxFit.fill),
                    const Text('Garlic Butter',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold)),
                    const Text('Oyster Mushroom',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold)),
                    const Text('Stir-Fry',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold))
                  ]),
                ),
              ),
            ),
            back: Card(
              elevation: 10,
              child: SizedBox(
                width: 383,
                height: 450,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: Column(children: const <Widget>[
                      SizedBox(height: 20),
                      Text('Ingredients',
                          style: TextStyle(
                              fontSize: 20, fontStyle: FontStyle.italic)),
                      SizedBox(height: 20),
                      Text(
                          '\u2022 8 ounces oyster mushrooms, cleaned and sliced\n'),
                      Text('\u2022 2 tablespoons butter\n'),
                      Text('\u2022 3 cloves garlic, minced\n'),
                      Text('\u2022 1 red bell pepper, sliced\n'),
                      Text('\u2022 1 red bell pepper, sliced\n'),
                      Text('\u2022 2 tablespoons soy sauce\n'),
                      Text('\u2022 1 tablespoon oyster sauce\n'),
                      Text('\u2022 1 teaspoon cornstarch (optional)\n'),
                      Text('\u2022 Salt and pepper to taste\n'),
                      Text(
                          '\u2022 Fresh cilantro or green onions, chopped (for garnish)'),
                      SizedBox(height: 20),
                      Text('Instructions',
                          style: TextStyle(
                              fontSize: 20, fontStyle: FontStyle.italic)),
                      SizedBox(height: 20),
                      Text(
                          '1. Heat the butter in a large skillet or wok over medium-high heat until melted.\n'),
                      Text(
                          '2. Add the minced garlic to the skillet and sauté for about 30 seconds, until fragrant.\n'),
                      Text(
                          '3. Add the sliced oyster mushrooms, red bell pepper, and green bell pepper to the skillet. Stir-fry for about 4-5 minutes, or until the vegetables are crisp-tender and the mushrooms have softened.\n'),
                      Text(
                          '4. In a small bowl, whisk together the soy sauce, oyster sauce, and cornstarch (if using) until well combined.\n'),
                      Text(
                          '5. Pour the sauce mixture over the mushrooms and vegetables. Toss everything together to coat evenly. Cook for an additional 1-2 minutes, allowing the sauce to thicken slightly.\n'),
                      Text(
                          '6. Taste and season with salt and pepper if needed.\n'),
                      Text(
                          '7. Remove the stir-fry from heat and transfer it to a serving dish.\n'),
                      Text(
                          '8. Garnish with freshly chopped cilantro or green onions.\n'),
                    ]),
                  ),
                ),
              ),
            ),
          ),
          FlipCard(
            //Penny Bun
            fill: Fill.fillBack,
            direction: FlipDirection.VERTICAL,
            side: CardSide.FRONT,
            front: Card(
              elevation: 10,
              child: SizedBox(
                width: 383,
                height: 450,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(children: <Widget>[
                    Image.asset('assets/cook-pennybun.jpg',
                        height: 240, width: 240, fit: BoxFit.fill),
                    const Text('Penny Bun',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold)),
                    const Text('Mushroom and',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold)),
                    const Text('Spinach Pasta',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold))
                  ]),
                ),
              ),
            ),
            back: Card(
              elevation: 10,
              child: SizedBox(
                width: 383,
                height: 450,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: Column(children: const <Widget>[
                      SizedBox(height: 20),
                      Text('Ingredients',
                          style: TextStyle(
                              fontSize: 20, fontStyle: FontStyle.italic)),
                      SizedBox(height: 20),
                      Text(
                          '\u2022 8 ounces pasta (such as penne or fusilli)\n'),
                      Text(
                          '\u2022 8 ounces penny bun mushrooms, cleaned and sliced\n'),
                      Text('\u2022 2 tablespoons olive oil\n'),
                      Text('\u2022 3 cloves garlic, minced\n'),
                      Text('\u2022 4 cups fresh spinach leaves\n'),
                      Text('\u2022 1/4 cup grated Parmesan cheese\n'),
                      Text('\u2022 2 tablespoons chopped fresh parsley\n'),
                      Text('\u2022 Salt and pepper to taste\n'),
                      Text(
                          '\u2022 Optional toppings: toasted pine nuts, red pepper flakes'),
                      SizedBox(height: 20),
                      Text('Instructions',
                          style: TextStyle(
                              fontSize: 20, fontStyle: FontStyle.italic)),
                      SizedBox(height: 20),
                      Text(
                          '1. Cook the pasta according to the package instructions until al dente. Drain and set aside.\n'),
                      Text(
                          '2. Heat the olive oil in a large skillet over medium heat. Add the minced garlic and sauté for about 1 minute until fragrant.\n'),
                      Text(
                          '3. Add the sliced penny bun mushrooms to the skillet and cook for about 5-7 minutes until they are tender and lightly browned. Stir occasionally to ensure even cooking.\n'),
                      Text(
                          '4. Add the fresh spinach leaves to the skillet and cook for another 2-3 minutes until wilted.\n'),
                      Text(
                          '5. Season the mushroom and spinach mixture with salt and pepper to taste.\n'),
                      Text(
                          '6. Add the cooked pasta to the skillet and toss everything together until well combined.\n'),
                      Text(
                          '7. Sprinkle the grated Parmesan cheese over the pasta and stir until the cheese melts and coats the pasta evenly.\n'),
                      Text(
                          '8. Remove the skillet from heat and garnish the pasta with chopped fresh parsley.\n'),
                      Text(
                          '9. Serve the Penny Bun Mushroom and Spinach Pasta warm, optionally topped with toasted pine nuts and a sprinkle of red pepper flakes for added flavor and texture.\n')
                    ]),
                  ),
                ),
              ),
            ),
          ),
          FlipCard(
            //Portobello
            fill: Fill.fillBack,
            direction: FlipDirection.VERTICAL,
            side: CardSide.FRONT,
            front: Card(
              elevation: 10,
              child: SizedBox(
                width: 383,
                height: 450,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(children: <Widget>[
                    Image.asset('assets/cook-portobello.jpg'),
                    const Text('Grilled Portobello',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold)),
                    const Text('Mushroom Burgers',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold))
                  ]),
                ),
              ),
            ),
            back: Card(
              elevation: 10,
              child: SizedBox(
                width: 383,
                height: 450,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: Column(children: const <Widget>[
                      SizedBox(height: 20),
                      Text('Ingredients',
                          style: TextStyle(
                              fontSize: 20, fontStyle: FontStyle.italic)),
                      SizedBox(height: 20),
                      Text('\u2022 4 large Portobello mushroom caps\n'),
                      Text('\u2022 4 burger buns\n'),
                      Text('\u2022 4 slices of cheese (optional)\n'),
                      Text('\u2022 2 tablespoons balsamic vinegar\n'),
                      Text('\u2022 2 tablespoons soy sauce\n'),
                      Text('\u2022 2 tablespoons olive oil\n'),
                      Text('\u2022 2 cloves garlic, minced\n'),
                      Text('\u2022 1 teaspoon dried thyme\n'),
                      Text('\u2022 Salt and pepper to taste\n'),
                      Text(
                          '\u2022 Optional toppings: lettuce, tomato slices, red onion slices, avocado, mayonnaise'),
                      SizedBox(height: 20),
                      Text('Instructions',
                          style: TextStyle(
                              fontSize: 20, fontStyle: FontStyle.italic)),
                      SizedBox(height: 20),
                      Text(
                          '1. Preheat a grill or grill pan to medium-high heat.\n'),
                      Text(
                          '2. Clean the Portobello mushroom caps by gently wiping them with a damp cloth. Remove the stems and use a spoon to scrape out the gills from the underside of the caps.\n'),
                      Text(
                          '3. In a small bowl, whisk together the balsamic vinegar, soy sauce, olive oil, minced garlic, dried thyme, salt, and pepper.\n'),
                      Text(
                          '4. Brush both sides of the Portobello mushroom caps generously with the marinade mixture.\n'),
                      Text(
                          '5. Place the mushroom caps on the preheated grill or grill pan, gill side down. Grill for about 4-5 minutes on each side, or until they are tender and have grill marks.\n'),
                      Text(
                          '6. If using cheese, place a slice of cheese on top of each mushroom cap during the last minute of grilling to allow it to melt slightly.\n'),
                      Text(
                          '7. While the mushrooms are grilling, lightly toast the burger buns on the grill.\n'),
                      Text(
                          '8. Assemble the burgers by placing a grilled Portobello mushroom cap on each toasted bun. Add your desired toppings such as lettuce, tomato slices, red onion slices, avocado, and mayonnaise.\n'),
                      Text(
                          '9. Serve the Grilled Portobello Mushroom Burgers immediately and enjoy the flavorful and satisfying meaty mushroom experience!\n')
                    ]),
                  ),
                ),
              ),
            ),
          ),
          FlipCard(
            //Shiitake
            fill: Fill.fillBack,
            direction: FlipDirection.VERTICAL,
            side: CardSide.FRONT,
            front: Card(
              elevation: 10,
              child: SizedBox(
                width: 383,
                height: 450,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(children: <Widget>[
                    Image.asset('assets/cook-shiitake.jpg'),
                    const Text('Shiitake Mushroom',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold)),
                    const Text('Stir-Fry with',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold)),
                    const Text('Vegetables',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold))
                  ]),
                ),
              ),
            ),
            back: Card(
              elevation: 10,
              child: SizedBox(
                width: 383,
                height: 450,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: Column(children: const <Widget>[
                      SizedBox(height: 20),
                      Text('Ingredients',
                          style: TextStyle(
                              fontSize: 20, fontStyle: FontStyle.italic)),
                      SizedBox(height: 20),
                      Text(
                          '\u2022 8 ounces shiitake mushrooms, stems removed and sliced\n'),
                      Text('\u2022 2 tablespoons vegetable oil\n'),
                      Text('\u2022 1 red bell pepper, sliced\n'),
                      Text('\u2022 1 yellow bell pepper, sliced\n'),
                      Text(
                          '\u2022 1 medium carrot, julienned or sliced into matchsticks\n'),
                      Text('\u2022 2 cloves garlic, minced\n'),
                      Text('\u2022 2 tablespoons soy sauce\n'),
                      Text('\u2022 1 tablespoon oyster sauce\n'),
                      Text('\u2022 1 tablespoon rice vinegar\n'),
                      Text('\u2022 1 teaspoon sesame oil\n'),
                      Text(
                          '\u2022 1 teaspoon cornstarch (optional, for thickening sauce)\n'),
                      Text('\u2022 Salt and pepper to taste\n'),
                      Text(
                          '\u2022 Optional garnish: sliced green onions, sesame seeds'),
                      SizedBox(height: 20),
                      Text('Instructions',
                          style: TextStyle(
                              fontSize: 20, fontStyle: FontStyle.italic)),
                      SizedBox(height: 20),
                      Text(
                          '1. Heat the vegetable oil in a large skillet or wok over medium-high heat.\n'),
                      Text(
                          '2. Add the minced garlic to the hot oil and sauté for about 30 seconds until fragrant.\n'),
                      Text(
                          '3. Add the sliced shiitake mushrooms to the skillet and stir-fry for about 3-4 minutes until they start to soften and brown slightly.\n'),
                      Text(
                          '4. Add the sliced red and yellow bell peppers, and julienned carrot to the skillet. Stir-fry for an additional 4-5 minutes until the vegetables are crisp-tender.\n'),
                      Text(
                          '5. In a small bowl, whisk together the soy sauce, oyster sauce, rice vinegar, sesame oil, and cornstarch (if using) until well combined.\n'),
                      Text(
                          '6. Pour the sauce mixture over the vegetables and mushrooms in the skillet. Toss everything together to coat evenly. Cook for an additional 1-2 minutes until the sauce thickens slightly.\n'),
                      Text('7. Season with salt and pepper to taste.\n'),
                      Text(
                          '8. Remove the stir-fry from heat and transfer it to a serving dish.\n'),
                      Text(
                          '9. Garnish with sliced green onions and sesame seeds for added flavor and presentation.\n')
                    ]),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'A.I.',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Cookbook',
          ),
        ],
        currentIndex: globals.selectedIndex,
        selectedItemColor: Colors.brown,
        onTap: _onItemTapped,
        elevation: 0,
      ),
    );
  }
}
