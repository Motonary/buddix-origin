import {ReduceStore} from 'flux/utils';
import ActionTypes from '../ActionTypes';
import Dispatcer from '../Dispatcher';

class TestStore extends ReduceStore {
  constructor() {
    super(Dispatcher);
  }

  getInitialState() {
  }

  reduce(state, action) {
    switch (action.type) {
      case TodoActionTypes.HOGE_FUGA:
        break

      default:
        return state;
    }
  }
}

export default new TestStore();
