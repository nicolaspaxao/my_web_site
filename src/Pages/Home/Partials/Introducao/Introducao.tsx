import { SocialMedia } from '../SocialMedia/SocialMedia';
import styles from './Introducao.module.css';

export const Introducao = () => {
	return (
		<section className={`${styles.introduction} `}>
			<div className='container animeLeft '>
				<h1 className='title animeLeft'>Olá, Sou o Nicolas Paxão</h1>
				<p className='subtitle animeLeft'>Sinta-se confortável para navegar no meu humilde web site. É um prazer lhe ter por aqui!</p>
				<button className={styles.downloadBtn}>Download Currículum</button>
			</div>
			<SocialMedia />
		</section>
	)
}
