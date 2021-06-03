import 'package:peliculas2/model/person_response.dart';
import 'package:peliculas2/repository/repository.dart';
import 'package:rxdart/subjects.dart';

class PersonsListBloc {
  final MovieRepository _repository = MovieRepository();
  final BehaviorSubject<PersonResponse> _subject = 
  BehaviorSubject<PersonResponse>();

  getMovies() async {
    PersonResponse response= await _repository.getPersons(0);
    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }
  
  BehaviorSubject<PersonResponse> get subject => _subject;

  getPersons() {}
    
}

final personsBloc = PersonsListBloc();
  
  
  