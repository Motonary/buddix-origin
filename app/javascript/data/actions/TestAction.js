// TODO(Taishi): おそらくSuperAgent導入
import ActionTypes from '../ActionTypes';
import Dispatcer from '../Dispatcher';

const Actions = {
  HogeFuga(text) {
    TodoDispatcher.dispatch({
      type: TodoActionTypes.HOGE_FUGA,
      text,
    });
  },
};

export default Actions;
