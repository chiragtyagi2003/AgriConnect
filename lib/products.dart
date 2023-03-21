import 'package:agriconnect/imageDisplay.dart';
import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-Store'),
        backgroundColor: Colors.cyan,
      ),

      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  ProductWidget(
                      name: 'Weeding Hoe',
                      imageUrl: 'https://i.pinimg.com/564x/ee/81/a8/ee81a89de66f1c375b6bed6e0d6bfef4.jpg',
                      price: 'x1 Rs.1800',
                      desc: 'A hoe is a long-handled gardening tool with a thin metal blade, '
                          'used mainly for weeding. It is also used for cultivating and gardening. '
                          'It is an ancient and versatile agricultural and horticultural hand tool '
                          'used to shape soil, remove weeds, clear soil, and harvest root crops.',
                  ),

                  ProductWidget(name: 'Mower',
                      imageUrl: 'https://i.pinimg.com/564x/5f/8e/11/5f8e11da25b27c866e17193b392335a8.jpg',
                      price: 'x1 Rs.2200',
                      desc: 'A mower is a machine that is used to cut grass or other vegetation that grows on the ground.'
                          ' It is also known as a lawnmower. There are different types of mowers such as push mowers, '
                          'riding mowers, and zero-turn mowers. Push mowers are powered by human effort and are used for small lawns.'
                  ),
                ],
              ),
              
              SizedBox(height: 10.0,),
              
              Row(
                children: [
                  ProductWidget(
                      name: 'Rake',
                      imageUrl: 'https://i.pinimg.com/564x/9e/75/63/9e7563acda3714eb38232d6882c61e7a.jpg',
                      price: 'x1 Rs.300',
                      desc: 'A rake is a tool used for gardening, farming, and landscaping. '
                          'It has a long handle and a series of tines or prongs that are used to'
                          ' gather leaves, grass, or other debris. Rakes can be made of metal,'
                          ' plastic, or wood, and come in different sizes and shapes.',
                  ),

                  ProductWidget(
                      name: 'Tiller',
                      imageUrl: 'https://i.pinimg.com/236x/41/0f/d3/410fd3ff55ba5b6e45eca6e956f49c3e.jpg',
                      price: 'x1 Rs.250',
                      desc: 'A tiler is a person who lays tiles on floors, walls, and other surfaces. '
                          'They use different types of tiles such as clay, slate, marble, ceramic, '
                          'or glass to decorate and protect floors and walls.',
                  ),
                ],
              ),

              SizedBox(height: 10.0,),

              Row(
                children: [
                  ProductWidget(
                      name: 'Motor Cultivator',
                      imageUrl: 'https://i.pinimg.com/564x/cf/00/11/cf001168907ca0f14513a6e6cb69d0db.jpg',
                      price: 'x1 Rs.4500',
                    desc: 'A cultivator is a tool or machine used to loosen the soil while crops are growing.'
                        ' It can also refer to a person who cultivates something.There are different types of cultivators, '
                        'including disc harrows, tine/chain harrows, power harrows/rotary tillers,'
                        ' spring tine cultivators (maxitills & grubbers), and rigid tine cultivators (chisel ploughs).',
                  ),
                  
                  ProductWidget(
                      name: 'Shovel',
                      imageUrl: 'https://i.pinimg.com/564x/36/94/91/3694910e2ebb4539eda54b668ec6bdaa.jpg',
                      price: 'x1 Rs.1200',
                      desc: 'A shovel is a tool used for digging, lifting, and moving materials such as soil, coal,'
                          ' gravel, snow, sand, or ore. It has a broad blade with edges or sides '
                          'that are curved, angled, or straight, and a handle that is usually made of wood or plastic.',
                  ),
                ],
              ),

              SizedBox(height: 10.0,),

              Row(
                children: [
                  ProductWidget(
                      name: 'Sprayer',
                      imageUrl: 'https://i.pinimg.com/564x/1c/b6/18/1cb618d1669159fb5bac51fd398ed3c9.jpg',
                      price: 'x1 Rs.1400',
                    desc: 'A sprayer is a device that is used to apply liquid to a surface.'
                        ' It is commonly used for applying pesticides, herbicides, and fertilizers to crops. '
                        'There are different types of sprayers such as hand-held sprayers, backpack sprayers, '
                        'and tractor-mounted sprayers.',
                  ),
                  
                  ProductWidget(
                      name: 'Seeder',
                      imageUrl: 'https://i.pinimg.com/564x/15/78/50/157850176804a6853f57a0b304cc779a.jpg',
                      price: 'x1 Rs.7000',
                      desc: 'A seeder is an implement for planting or sowing seeds1. '
                          'It is a tool used in agriculture to sow seeds in the soil at the proper seeding rate and depth, '
                          'ensuring that the seeds are covered by soil. This saves them from being eaten by birds and animals'
                          ' or being dried up due to exposure to the sun. '
                          'Seeders can be used for planting grass, wheat, corn, and other crops.',
                  ),
                ],
              ),

              SizedBox(height: 10.0,),
              Row(
                children: [
                  ProductWidget(
                      name: 'Harrow',
                      imageUrl: 'https://i.pinimg.com/564x/10/56/80/105680389087e977b89a59d4c2b0d8be.jpg',
                      price: 'x1 Rs.7500',
                    desc: 'In agriculture, harrowing is a soil preparation method that is often used in conjunction with plowing '
                        'to ready a field for seeding. It is a farm implement used for surface tillage.'
                        ' It is used after plowing for breaking up and smoothing out the surface of the soil.'
                        ' The purpose of harrowing is to break up clods and to provide a soil structure, '
                        'called tilth, that is suitable for planting seeds.',
                  ),

                  ProductWidget(
                      name: 'Plow',
                      imageUrl: 'https://i.pinimg.com/564x/ad/17/38/ad17381cccfc4576018d69035b3a82c7.jpg',
                      price: 'x1 Rs.8000',
                      desc: 'A plow is a farming tool that is used to turn over soil in preparation for planting.'
                          ' It is also known as a plough. There are different types of plows such as moldboard plows, '
                          'chisel plows, and disc plows. Moldboard plows are used for turning over soil and burying weeds and other debris.'
                          ' Chisel plows are used for breaking up soil without turning it over.',
                  ),
                ],
              ),

              SizedBox(height: 10.0,),
              Row(
                children: [
                  ProductWidget(name: 'Pruner',
                    imageUrl: 'https://i.pinimg.com/736x/14/82/90/1482903e79677a6fbda7f90834d804d6.jpg',
                    price: 'x1 800',
                    desc: 'A pruner is a type of garden tool used for pruning plants. '
                        'It is a hand-held tool that is used to cut small branches and stems.'
                        ' Pruners are smaller tools, designed to fit in the palm of your hand. '
                        'They often feature a spring. There are different types of pruners,'
                        ' including bypass pruners, anvil pruners, and ratchet pruners.',
                  ),

                  ProductWidget(name: 'Auger',
                      imageUrl: 'https://i.pinimg.com/564x/0c/59/64/0c5964b64afd0e200f968138f126c195.jpg',
                      price: 'x1 1100',
                    desc: 'An auger is a hand tool with a long blade that looks sort of like a screw,'
                        ' which drills holes when turned. An auger is typically used to drill holes in '
                        'material such as wood, soil, or ice. When you turn the auger,'
                        ' the blade digs into the material and slowly shaves away a thin layer, eventually creating a hole.',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
