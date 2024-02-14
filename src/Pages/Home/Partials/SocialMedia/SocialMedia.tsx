import styles from './SocialMedia.module.css';
import LinkedIn from '../../../../Assets/linkedin.svg?react';
import Github from '../../../../Assets/github.svg?react';
import Email from '../../../../Assets/email.svg?react';
import WhatsApp from '../../../../Assets/whatsapp.svg?react';

export const SocialMedia = () => {

	return (
		<aside className={`${styles.socialMedia} animeLeft`}>
			<ul className={styles.socialMedias}>
				<li className={styles.linkedin}>
					<a href="https://www.linkedin.com/in/nicolas-pax%C3%A3o-b53764178/" target='_blank' >
						<LinkedIn />
					</a>
				</li>
				<li className={styles.github}>
					<a href="https://github.com/nicolaspaxao" target='_blank'>
						<Github />
					</a>
				</li>
				<li className={styles.whatsapp}>
					<a href="https://w.app/NicolasPaxao" target='_blank'>
						<WhatsApp />
					</a>
				</li>
				<li className={styles.email}>
					<a href="mailto:nicolaspaxao@gmail.com" target='_blank'>
						<Email />
					</a>
				</li>
			</ul>
		</aside>

	)
}
