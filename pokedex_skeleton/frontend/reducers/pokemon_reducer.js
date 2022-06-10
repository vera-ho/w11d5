import { RECEIVE_ALL_POKEMON } from '../actions/pokemon_actions';

export default pokemonReducer = (state = {}, action) => {
    Object.freeze(state);
    let nextState = Object.assign({}, state);
    switch(action.type) {
        case RECEIVE_ALL_POKEMON:
            nextState = Object.assign({}, action.pokemon);
            return nextState;
        default:
            return state;
    }
}