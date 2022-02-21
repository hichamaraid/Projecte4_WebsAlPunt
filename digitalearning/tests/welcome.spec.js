import { shallowMount } from '@vue/test-utils';
import welcome from '..src/components/welcome.vue'

describe('Testing Component Methods', () => {
    const wrapper = shallowMount(welcome);

    it('Texto correcto', () => {
        expect(h1.classes()).toContain('titulo-vue');
    })

})