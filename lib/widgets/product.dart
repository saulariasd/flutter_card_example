import 'package:cached_network_image/cached_network_image.dart';
import 'package:card/utils/utils.dart';
import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({Key key, this.cart}) : super(key: key);
  final dynamic cart;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.light(),
      child: Card(
        margin: EdgeInsets.all(sizeWidth(context) * (2.5 / 100)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
        elevation: 1,
        shadowColor: Colors.black54,
        child: Container(
          width: sizeWidth(context) * (35 / 100),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(13),
                    topRight: Radius.circular(13)),
                child: CachedNetworkImage(
                  imageUrl:
                      'https://lh3.googleusercontent.com/proxy/Jx055UmCnetNTYw8Q5yWZ0GXyx_r1QQTyZ_vjZeIV_JhRhKrArMla74sT1lQYUCf1ybtAxEaSonJPUmxO4gXUNIP36NnAy15sy5e-Zm055K-7kKLeDl13PIwPaw94zIgiP11I_Q',
                  fit: BoxFit.cover,
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
              SizedBox(height: sizeHeight(context) * (2 / 100)),
              Column(
                children: [
                  Text(
                    'Producto',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: sizeWidth(context) / 100 * (13 / 3),
                    ),
                  ),
                  Text(
                    'Descripcion',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: sizeWidth(context) / 100 * (11 / 3),
                        color: Colors.grey),
                  ),
                  Container(
                    margin: EdgeInsets.all(sizeWidth(context) * (2 / 100)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '\$5.99',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'x 2',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
