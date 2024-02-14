import { useEffect, useState } from 'react';
import { SocialMedia } from '../SocialMedia/SocialMedia';
import styles from './Introducao.module.css';

export const Introducao = () => {
	const [showSocialMedia, setShowSocialMedia] = useState(true);

	const pdfPath = '../../../../Assets/docs/curriculo-nicolas-paxao-desenvolvedor-flutter.pdf';


	const atualizarLargura = () => {
		if (window.innerWidth < 1120) {
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
		<section className={`${styles.introduction} animeLeft`}>
			<div className='container'>
				<h1 className='title'>Olá, Mundo!🖖</h1>
				<p className='subtitle p-5'>
					Me chamo Nicolas Paxão, tenho 23 anos, sou <span className='font-bold '>Desenvolvedor Júnior FullStack</span> e em busca de desenvolver ao máximo minhas habilidades para entregar sistemas
					cada vez mais otimizados, manuteníveis e com segurança nas suas entregas.
				</p>
				<a href={pdfPath} download="curriculo-nicolas-paxao-desenvolvedor-flutter.pdf" className={styles.downloadBtn}>Baixar Currículo</a>
			</div>
			{showSocialMedia && <SocialMedia />}

		</section>
	)
}
