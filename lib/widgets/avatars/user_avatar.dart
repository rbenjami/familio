import 'package:flutter/material.dart';

/// A custom avatar widget for displaying user profile images
class UserAvatar extends StatelessWidget {
  /// Creates a user avatar
  const UserAvatar({
    this.imageUrl,
    this.name,
    this.size = 40.0,
    this.borderColor,
    this.borderWidth = 0.0,
    this.onTap,
    super.key,
  }) : assert(imageUrl != null || name != null, 'Either imageUrl or name must be provided');

  /// URL of the profile image
  final String? imageUrl;

  /// User's name (used for fallback initials and for accessibility)
  final String? name;

  /// Size of the avatar
  final double size;

  /// Color of the border around the avatar
  final Color? borderColor;

  /// Width of the border around the avatar
  final double borderWidth;

  /// Callback when the avatar is tapped
  final VoidCallback? onTap;

  /// Get the initials from a name
  String _getInitials() {
    if (name == null || name!.isEmpty) return '';
    
    final nameParts = name!.trim().split(' ');
    if (nameParts.length >= 2) {
      return '${nameParts[0][0]}${nameParts[1][0]}'.toUpperCase();
    } else if (nameParts.length == 1) {
      return nameParts[0][0].toUpperCase();
    }
    
    return '';
  }

  /// Get a color based on the name
  Color _getColorFromName() {
    if (name == null || name!.isEmpty) return Colors.grey;
    
    // Generate a consistent color based on the name
    final int hashCode = name!.hashCode;
    final List<Color> colors = [
      Colors.blue,
      Colors.green,
      Colors.orange,
      Colors.purple,
      Colors.red,
      Colors.teal,
      Colors.pink,
      Colors.indigo,
    ];
    
    return colors[hashCode.abs() % colors.length];
  }

  @override
  Widget build(BuildContext context) {
    final hasImage = imageUrl != null && imageUrl!.isNotEmpty;
    final avatar = Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: hasImage ? null : _getColorFromName(),
        border: borderWidth > 0 && borderColor != null
            ? Border.all(color: borderColor!, width: borderWidth)
            : null,
        image: hasImage
            ? DecorationImage(
                image: NetworkImage(imageUrl!),
                fit: BoxFit.cover,
              )
            : null,
      ),
      child: hasImage
          ? null
          : Center(
              child: Text(
                _getInitials(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: size * 0.4,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
    );

    if (onTap != null) {
      return InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(size / 2),
        child: avatar,
      );
    }

    return avatar;
  }
}
