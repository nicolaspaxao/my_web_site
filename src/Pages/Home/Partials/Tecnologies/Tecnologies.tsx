import styles from './Tecnologies.module.css';
//Front
import Flutter from '../../../../Assets/flutter.svg?react';
import Dart from '../../../../Assets/dart.svg?react';
import Html from '../../../../Assets/html.svg?react';
import Angular from '../../../../Assets/angular.svg?react';
import ReactSvg from '../../../../Assets/react.svg?react';
import Bootstrap from '../../../../Assets/bootstrap.svg?react';
import Css from '../../../../Assets/css.svg?react';
import Scss from '../../../../Assets/scss.svg?react';
import JavaScript from '../../../../Assets/javascript.svg?react';
//Backend
import CSharp from '../../../../Assets/csharp.svg?react';
import Java from '../../../../Assets/java.svg?react';
import SpringBoot from '../../../../Assets/spring-boot.svg?react';
import SQL from '../../../../Assets/sql.svg?react';

export const Tecnologies = () => {
  return (
    <section className={styles.tecnologies}>
      <div className={`${styles.container} animeLeft `}>
        <h1 className='title-section'>Tecnologias</h1>

        <div className={styles.tecStack}>
          <h3>- Front-end</h3>
          <div className={styles.content}>
            <p>&nbsp;Atuando principalmente com front-end últimamente, tendo como principal o Angular 8 e o Flutter. Busquei conhecimento extra com React para poder ter-lo na stack e, futuramente, trazer também o React Native.</p>
          </div>
          <div className={styles.tecStackItems}>
            <div className={styles.tecStackItem}>
              <Flutter />
              <p>Flutter</p>
            </div>
            <div className={styles.tecStackItem}>
              <Dart />
              <p>Dart</p>
            </div>
            <div className={styles.tecStackItem}>
              <Html />
              <p>HTML 5</p>
            </div>
            <div className={styles.tecStackItem}>
              <Css />
              <p>CSS 3</p>
            </div>
            <div className={styles.tecStackItem}>
              <Scss />
              <p>SCSS</p>
            </div>
            <div className={styles.tecStackItem}>
              <Bootstrap />
              <p>Bootstrap 4</p>
            </div>
            <div className={styles.tecStackItem}>
              <Angular />
              <p>Angular 8</p>
            </div>
            <div className={styles.tecStackItem}>
              <ReactSvg />
              <p>React </p>
            </div>
            <div className={styles.tecStackItem}>
              <JavaScript />
              <p>Javascript </p>
            </div>
          </div>
        </div>

        <div className={styles.tecStack}>
          <h3>- Back-end</h3>
          <div className={styles.content}>
            <p>&nbsp;Com as tecnologias de Back-End, tive estudos e atividades academicas com C# .NET 5 para Web API com Entity Framework. E por fim, atuando atualmente com Java em correções de vulnerabilidade e, estudando Spring Boot 3.</p>
          </div>
          <div className={styles.tecStackItems}>
            <div className={styles.tecStackItem}>
              <Java />
              <p>Java</p>
            </div>
            <div className={styles.tecStackItem}>
              <SpringBoot />
              <p>Spring Boot 3</p>
            </div>
            <div className={styles.tecStackItem}>
              <CSharp />
              <p>C# .NET5</p>
            </div>
            <div className={styles.tecStackItem}>
              <SQL />
              <p>SQL Server MySQl</p>
            </div>
          </div>
        </div>

      </div>
    </section >
  )
}
