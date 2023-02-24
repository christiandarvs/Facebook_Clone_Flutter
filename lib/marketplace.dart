import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MarketPlace extends StatelessWidget {
  const MarketPlace({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imgURL = [
      'https://scontent.fmnl25-3.fna.fbcdn.net/v/t45.5328-4/330511476_5854874887959651_5818668239415726161_n.jpg?stp=c43.0.260.260a_dst-jpg_p261x260&_nc_cat=108&ccb=1-7&_nc_sid=c48759&_nc_eui2=AeGUciPvSiOJh1RC3aozg_3mOu4lwAn1Xw067iXACfVfDXL_1FvEWUbiWn2Nnu3sbTKvhLK5MwoFaSfW8waUiyB6&_nc_ohc=y9GlSGx0GQAAX9ZPavK&_nc_ht=scontent.fmnl25-3.fna&oh=00_AfArQ4rlmweYgRhCGqyGig-wr9rQxo1EWDuLlD6wP-IKzw&oe=63FD4EF5',
      'https://scontent.fmnl8-2.fna.fbcdn.net/v/t45.5328-4/331345283_5994671403931426_4367675155625640731_n.jpg?stp=c43.0.260.260a_dst-jpg_p261x260&_nc_cat=110&ccb=1-7&_nc_sid=c48759&_nc_eui2=AeESZrNF0X2OC9S6UFpCwaUrQLtXoM_ncshAu1egz-dyyJBH3rf1mSiXCOhNIL4598FJDEhjkOlDwmto0IUrh7tk&_nc_ohc=olXExS-_nUUAX8eVMgj&_nc_ht=scontent.fmnl8-2.fna&oh=00_AfBqYsA7-Zdsua-gX8KpirZjvH8ZKd7GMnePja_d8j_dVg&oe=63FDCE0E',
      'https://scontent.fmnl8-1.fna.fbcdn.net/v/t45.5328-4/330108210_6007930639262604_2317412736320079206_n.jpg?stp=c151.0.260.260a_dst-jpg_p261x260&_nc_cat=100&ccb=1-7&_nc_sid=c48759&_nc_eui2=AeEJX7UtJ7fhLherZAqsbLMZPtaoapEZP1Q-1qhqkRk_VGtkM0YCUAYgqBOYe585Qv9FLVZVx-R4nYFAstL0UL3f&_nc_ohc=wz59txJF6vAAX_NBbCi&_nc_ht=scontent.fmnl8-1.fna&oh=00_AfBVXD93bAWwwHseP7ZeEp0_afZR-FkVlMDq2dGC3GEjow&oe=63FD3D97',
      'https://scontent.fmnl8-2.fna.fbcdn.net/v/t45.5328-4/327443632_6153051501382526_1818829688166871388_n.jpg?stp=c6.0.260.260a_dst-jpg_p261x260&_nc_cat=1&ccb=1-7&_nc_sid=c48759&_nc_eui2=AeH6h8dBooBasDzGbsFCQzfsH9rGyM0PBGIf2sbIzQ8EYkhkBEbEWToY8qPAsFV8N9IpsHcmdIgWw-pmIcN-UMBS&_nc_ohc=_nzvbiBsBL0AX_OYRko&_nc_ht=scontent.fmnl8-2.fna&oh=00_AfAQiK1BTxww76IWGiWvX_o7wd2RkBaMtKfADQ6wGipW0A&oe=63FD3997',
      'https://scontent.fmnl8-2.fna.fbcdn.net/v/t45.5328-4/330654020_6234770283234900_1431092629154160968_n.jpg?stp=c0.43.261.261a_dst-jpg_p261x260&_nc_cat=1&ccb=1-7&_nc_sid=c48759&_nc_eui2=AeHhdmWfCtWpG3qZW05uZB6e9TIeDRza-Yv1Mh4NHNr5i9JoteFrooTZW2cHYAXYqqutx-a2vegP6noB5oi_Seev&_nc_ohc=ir7eBWw7MkYAX_6XGNA&_nc_ht=scontent.fmnl8-2.fna&oh=00_AfCHywn_PkC-Yqd7Z7tVvElwrHEVFRywMnIdJA7Y_4XJow&oe=63FD602B',
      'https://scontent.fmnl8-2.fna.fbcdn.net/v/t39.30808-6/332511096_587382433288206_7785270282399717731_n.jpg?stp=c43.0.260.260a_dst-jpg_p261x260&_nc_cat=103&ccb=1-7&_nc_sid=5cd70e&_nc_eui2=AeGYqgxGD9farSimlUdCku4mKEoFmrAagpYoSgWasBqClpPcOaDBgRCO4OMQgILy0W9wspn42bMpVcZ_OeEwmpNV&_nc_ohc=IdXwSkB52usAX_VjbJt&_nc_ht=scontent.fmnl8-2.fna&oh=00_AfBos7fEW8nAw-tvEG25ZYDceRH158YV9iWAWEcicJyVIQ&oe=63FCC222',
      'https://scontent.fmnl8-2.fna.fbcdn.net/v/t45.5328-4/329003816_5773960526006073_6938319901151822832_n.jpg?stp=c0.20.261.261a_dst-jpg_p261x260&_nc_cat=1&ccb=1-7&_nc_sid=c48759&_nc_eui2=AeEfLfp0hs_sX4tuzgPKdC_K9DrUxLPeBtv0OtTEs94G27aynjNpqx3GYn9VDYnenl0FZk10iseDYx2qrsWmuOCE&_nc_ohc=BiY8vee3WbIAX9eghfs&tn=R7mrce8hstjuDFOt&_nc_ht=scontent.fmnl8-2.fna&oh=00_AfDGZjjbCdNwSDhCORwRHQqGvRhKG38fbSqEs2xk_Rh7XQ&oe=63FD1E38',
      'https://scontent.fmnl8-2.fna.fbcdn.net/v/t39.30808-6/332887620_1889542588046887_3709018295280875872_n.jpg?stp=c0.29.261.261a_cp6_dst-jpg_p261x260&_nc_cat=110&ccb=1-7&_nc_sid=5cd70e&_nc_eui2=AeFFVRmP5nhE6fQMDK9iTXRGiWWFg6QkMQmJZYWDpCQxCahVcwQPzhA7WBY2Yr929mOu9nx7-WgJpz0OI-DXe5Gq&_nc_ohc=lCiFQjS1tVsAX9xsJj9&_nc_ht=scontent.fmnl8-2.fna&oh=00_AfDCB_8R9qxxOcDsIAb_I_zlvc0qutaXFamVq2JgvBgfDg&oe=63FCD035',
      'https://scontent.fmnl8-3.fna.fbcdn.net/v/t45.5328-4/332306051_5982329378528464_7168853068170712082_n.jpg?stp=c0.43.261.261a_dst-jpg_p261x260&_nc_cat=101&ccb=1-7&_nc_sid=c48759&_nc_eui2=AeHgptptcVMdpXwzcS4NEU_sOUrvuZBi4xo5Su-5kGLjGvo7kTbPdqTJ9c1mwxiPmhDDeKHTpsJAN2FkyOk2NMnB&_nc_ohc=f-c6m6ObFkEAX9B3ijL&_nc_ht=scontent.fmnl8-3.fna&oh=00_AfDZBtIkTas0O3V-o1N8tKc5NKZaPZQjwy6h4tpWb9rl7A&oe=63FE6C32',
      'https://scontent.fmnl8-3.fna.fbcdn.net/v/t45.5328-4/315999636_8586927611380349_566573631812413658_n.jpg?stp=c0.31.261.261a_dst-jpg_p261x260&_nc_cat=104&ccb=1-7&_nc_sid=c48759&_nc_eui2=AeGmd0dlicCjHRhGvvx-xC8Cm-n-rxbKe26b6f6vFsp7btNCQnOroiR8UZ3zRMI8o1JtDDHz8q3RVO-WEk6YAAGP&_nc_ohc=KC9BK_24hE4AX8Jcokh&tn=R7mrce8hstjuDFOt&_nc_ht=scontent.fmnl8-3.fna&oh=00_AfAGTn-gEpsAxKE1uIhMY2XIZpebF7NitUuKYssN2Z_BMQ&oe=63FE07A0'
    ];
    List<String> itemsPrice = [
      'P500',
      'P3,000',
      'P3,999',
      'P1,000',
      'P2,500',
      'P123',
      'P300',
      'P12,000',
      'P30,000',
      'P800'
    ];
    List<String> location = [
      'General Trias',
      'Manila',
      'Antipolo',
      'Manila',
      'Santa Rosa',
      'Bacoor',
      'Quezon City',
      'General Trias',
      'Calamba',
      'Manila'
    ];
    return ListView(children: [
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Marketplace',
              style: GoogleFonts.titilliumWeb(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30),
            ),
            Row(
              children: [
                IconButton(
                    onPressed: (() {}),
                    icon: const Icon(
                      Icons.person,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: (() {}),
                    icon: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ))
              ],
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
                child: ElevatedButton.icon(
              onPressed: (() {}),
              icon: const Icon(Icons.sell_outlined),
              label: const Text('Sell'),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  backgroundColor: const Color(0xff393a3c)),
            )),
            const SizedBox(
              width: 10,
            ),
            Expanded(
                child: ElevatedButton.icon(
              onPressed: (() {}),
              icon: const Icon(Icons.list),
              label: const Text('Categories'),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  backgroundColor: const Color(0xff393a3c)),
            ))
          ],
        ),
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: Divider(
          thickness: 2,
          color: Colors.grey,
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Today\'s Picks',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
            TextButton.icon(
                onPressed: (() {
                  debugPrint('${imgURL.length}');
                }),
                icon: const Icon(Icons.location_on_sharp),
                label: const Text('Bacoor, Cavite'))
          ],
        ),
      ),
      GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 10,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisExtent: 220),
          itemBuilder: ((context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  child: Image.network(imgURL[index]),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        itemsPrice[index],
                        style: const TextStyle(color: Colors.white),
                      ),
                      Text(
                        location[index],
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            );
          }))
    ]);
  }
}
