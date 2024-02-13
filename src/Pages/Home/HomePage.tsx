import { Fragment } from 'react';

import { Introducao } from './Partials/Introducao/Introducao';
import { SocialMedia } from './Partials/SocialMedia/SocialMedia';

export const HomePage = () => {
	return (
		<Fragment>
			<SocialMedia />
			<Introducao />

		</Fragment>
	)
}
