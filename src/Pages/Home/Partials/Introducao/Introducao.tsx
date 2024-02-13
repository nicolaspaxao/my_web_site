import styles from './Introducao.module.css';

export const Introducao = () => {
	return (
		<section className={`${styles.introduction} `}>
			<div className='container'>

				<h1 className={`${styles.title} animeLeft`}>Hi, I'm Nicolas Paxão</h1>
				<p className={styles.subtitle}>Feel confortable to browse on my humble website. It's a pleasure for me have you here!</p>
				<button className={styles.downloadBtn}>Download Currículum</button>
			</div>
		</section>
	)
}
