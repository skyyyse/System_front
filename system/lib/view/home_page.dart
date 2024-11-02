import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:system/controller/storage_controller.dart';
import 'package:system/model/test.dart';
import 'package:system/view/constants.dart';
import 'package:system/view/main_page.dart';

class home_page extends StatefulWidget {
  home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  final ProductController productController = Get.put(ProductController());
  final controller=Get.put(storage_controller());
  final TextEditingController searchController = TextEditingController();

  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: LayoutBuilder(
        builder: (context, constraints) {
          double Testing = constraints.maxWidth;
          return CustomScrollView(
            slivers: [
              SliverAppBar(
                title: Text(
                  'Home',
                  style: TextStyle(fontSize: 25),
                ),
                backgroundColor: Colors.red,
                centerTitle: true,
                pinned: true,
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            print('Save');
                            controller.saveToken('testing');
                          });
                        },
                        child: Container(
                          color: Colors.red,
                          height: 50,
                            width: double.infinity,
                            child: Center(child: Text('Save'),
                            ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            print('remove');
                            controller.deleteToken();
                            Get.to(main_page());
                          });
                        },
                        child: Container(
                          color: Colors.red,
                          height: 50,
                          width: double.infinity,
                          child: Center(child: Text('remove'),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.red,
                        height: 50,
                        width: double.infinity,
                        child: Center(child: Text(controller.getToken().toString()),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: Container(
                        height: 55,
                        width: constraints.maxWidth,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 6,
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: TextField(
                                    style: TextStyle(color: Colors.black),
                                    cursorHeight: BorderSide.strokeAlignCenter,
                                    decoration: InputDecoration(
                                      focusColor: Colors.black,
                                      border: InputBorder.none,
                                      hintText: 'Enter text here', // Hint text
                                      helperStyle: TextStyle(fontSize: 2),
                                      hintStyle: TextStyle(color: Colors.black),
                                      contentPadding:
                                          EdgeInsets.symmetric(horizontal: 16),
                                    ),
                                    onChanged: (value) {
                                      setState(() {
                                        searchQuery = value.toLowerCase();
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 25,
                                      width: 1.5,
                                      color: Colors.black,
                                    ),
                                    const Icon(
                                      Icons.tune,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: Container(
                        height: 150,
                        width: constraints.maxWidth,
                        child: Obx(() {
                          return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: productController.categories.length,
                            itemBuilder: (context, index) {
                              final category =
                                  productController.categories[index];
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    productController
                                        .onCategorySelected(category.id);
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                    color: productController
                                                .selectedCategoryId.value ==
                                            category.id
                                        ? Colors.blue
                                        : Colors.grey[200],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 100,
                                        width: 100,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: AssetImage(
                                              'images/all.png',
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        category.title,
                                        style: const TextStyle(
                                          fontSize: 5,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
              SliverPadding(
                padding:
                    EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20),
                sliver: Obx(
                  () {
                    final filteredProducts =
                        productController.products.where((product) {
                      return product.title.toLowerCase().contains(searchQuery);
                    }).toList();
                    return SliverGrid(
                      delegate: SliverChildBuilderDelegate(
                        childCount: filteredProducts.length,
                        (context, index) {
                          final product = filteredProducts[index];
                          return Padding(
                            padding: const EdgeInsets.all(8),
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: kcontentColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex: 5,
                                        child: Padding(
                                          padding: const EdgeInsets.all(20),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                            ),
                                            child: Image(
                                              width: 150,
                                              height: 150,
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                product.image,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          width: double.infinity,
                                          child: Center(
                                            child: Text(
                                              product.title,
                                              style:  TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize:Testing<800?15: 18,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          width: double.infinity,
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  "\$${product.price}",
                                                  style:  TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.red,
                                                    fontSize: Testing<800?15:18
                                                  ),
                                                ),
                                                Row(
                                                  children: List.generate(
                                                    product.colors.length, (index) => Container(
                                                      width: Testing<800?14:18,
                                                      height: 18,
                                                      margin:
                                                      const EdgeInsets.only(right: 4),
                                                      decoration: BoxDecoration(
                                                        color: product.colors[index],
                                                        shape: BoxShape.circle,
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: const BoxDecoration(
                                        color: kprimaryColor,
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20),
                                          bottomLeft: Radius.circular(10),
                                        ),
                                      ),
                                      child: GestureDetector(
                                        onTap: () {
                                          // provider.toggleFavorite(product);
                                        },
                                        child: Icon(Icons.shopping_cart_sharp),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: Testing.toDouble() < 600 ? 2 : 3,
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 0,
                        childAspectRatio: 0.75,
                      ),
                    );
                  },
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
