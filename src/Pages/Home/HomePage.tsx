import { Fragment, useEffect, useState } from 'react';

import { Introducao } from './Partials/Introducao/Introducao';
import { Carrer } from './Partials/Carrer/Carrer';
import { Tecnologies } from './Partials/Tecnologies/Tecnologies';
import { SocialMedia } from './Partials/SocialMedia/SocialMedia';

export const HomePage = () => {
	const [showSocialMedia, setShowSocialMedia] = useState(true);

	const atualizarLargura = () => {
		if (window.innerWidth > 1120) {
			setShowSocialMedia(true)
		} else {
			setShowSocialMedia(false)
		}
	};

	useEffect(() => {
		atualizarLargura();
		window.addEventListener('resize', atualizarLargura);
		return () => {
			window.removeEventListener('resize', atualizarLargura);
		};
	}, []);

	return (
		<Fragment>
			<Introducao />
			<Carrer />
			<Tecnologies />
			{showSocialMedia && <SocialMedia />}

		</Fragment>
	)
}
