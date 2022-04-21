part of 'bottom_navigation_bloc.dart';

abstract class BottomNavigationEvent extends Equatable {
  const BottomNavigationEvent();

  @override
  List<Object> get props => [];
}

class TabChangeEvent extends BottomNavigationEvent {
  final int newIndex;

  const TabChangeEvent(this.newIndex);

  // Para que equatable identifique que sean clases iguales
  @override
  // TODO: implement props
  List<Object> get props => [newIndex];

}
