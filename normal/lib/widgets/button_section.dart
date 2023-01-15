
import 'package:flutter/material.dart';

class ButtonSection extends StatelessWidget {
  Column _buildButtonColumn(IconData icon, String label, Color color, BuildContext context, String message,) {
      return Column(
        children: [
         IconButton(
            onPressed: (){
              final snackbar = SnackBar(duration: const Duration(seconds: 2), content: Text(message),);
              ScaffoldMessenger.of(context).showSnackBar(
                snackbar
              );
            }, icon: Icon(
              icon,
              size: 20,
            ),
            color: color, 
          ),Text(label),
        ],
      );
  }
  
  const ButtonSection({super.key});
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn( Icons.call, 'CALL', color, context,'Llamando a'),
        _buildButtonColumn( Icons.near_me, 'ROUTE',color,context, 'Trasladando a'),
        _buildButtonColumn( Icons.share, 'SHARE',color,  context, 'Compartiendo a'),
      ],
    );
  }

    
}