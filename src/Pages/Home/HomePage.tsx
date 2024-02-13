import { Fragment } from 'react';

import { Introducao } from './Partials/Introducao/Introducao';
import { Carrer } from './Partials/Carrer/Carrer';

export const HomePage = () => {
	return (
		<Fragment>
			<Introducao />
			<Carrer />
		</Fragment>
	)
}
