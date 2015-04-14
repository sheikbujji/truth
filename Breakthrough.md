# Introduction #

> Radical advances in computer technology are through the discovery of new applications. Automations of mathematical or scientific model processing, document processing, telecommunications, and multimedia data processing are good examples. Technology that ultimately solves the problem of human life and alleviates the human body or mental labor is always recognized as innovative. Among a variety of problems of human beings - not just computer systems problem -, a problem that will lead a major innovation in computing technology is one that needs computing technology and one that can be solved by this advanced technology. As researcher, understanding the designs of large systems developed by the past tens of thousands of researchers will take a lot of time and efforts, while the impact or contribution of conducted researches may be relatively low. For researchers looking for new areas and applications like a pioneer and founding theory and practice for these new areas may be the most efficient way.

> Using this perspective, personal healthcare device is an important computing research topic. If computers can automatically and seamlessly solve physical and mental health-related problems, it is a huge contribution to the quality of life of mankind. Practical activities are classifying medical information devices, analyzing the requirements of each of these types of devices, redesigning the entire computer system architecture for these requirements, and building a prototype system.

> 컴퓨터 기술의 급진적 발전은 항상 새로운 응용의 발견과 적용을 통해서 이뤄져 왔다. 수학적 또는 과학 모델에 대한 연산 자동화, 문서 처리, 통신, 멀티미디어 등이 좋은 예시이다. 기술은 최종적으로 인류 일상의 문제를 해결하고 인간의 육체 또는 정신적 노동을 경감할때 그 가치가 평가되고 혁신으로 인정받는다. 앞으로 인류가 지닌 다양한 문제 - 굳이 컴퓨터 시스템 본연의 문제가 아닌 - 중에 고도로 발전된 디지털 컴퓨터 기술에 대한 수요가 있고 이 기술이 적용되어 문제 해결이 가능하다면 이 것이 바로 향후 혁신이 이뤄질 분야일 것이다. 연구자로서 과거의 수천 수만의 연구자들이 설계한 거대한 시스템을 이해하는 것은 많은 시간과 노력이 소요되며 연구로 인한 영향력 또는 기여도가 상대적으로 적을 수 있다. 연구자에게는 개척자와 같이 새로운 분야를 찾고 그 곳에서 이론과 실무를 집대성하는 것이 가장 효율적인 방법 및 전략일 수 있다.

> 이 관점에서 컴퓨터를 이용한 개인용 의료정보기기가 향후 중요한 연구주제라고 생각한다. 인간의 육체적 정신적 건강에 관한 문제를 컴퓨터가 자동으로 실시간으로 해결해 준다면 인류에 삶의 질 향상에 커다란 기여를 하는 것이다. 이 문제는 금세기를 살아가는 연구자들에게 주어진 해결이 쉽지 않은 도전 과제임과 동시에 커다란 기여의 기회를 제공하는 문제이기도하다. 특히, 컴퓨터시스템의 안정성, 신뢰성, 그리고 보안을 연구하는 공학도에게 있어서 '인체에 밀착되거나, 내장되거나, 또는 인체에 특정 행위를 가할 수 있는 컴퓨터의 안정성을 어떻게 보증할 수 있는가?'는 기본적이면서도 원천적인 질문이다. 예를들면, 하드웨어 장치가 장시간 사용 또는 인체 내부와 같은 디지털 장비의 작동에 있어서 최적이 아닌 환경에서의 작동으로 인한 오류가 발생할 수 있으며, (물리공간과 상호작용하는 시스템에 대한 테스팅 및 검증의 상대적 복잡도를 감안할 때) 실장된 소프트웨어에 버그가 있을 수 있으며, 오사용 가능성, 외부 침입장에 의한 보안 문제 등이 가능하다. 즉 의료용 컴퓨터는 과거 군수 및 우주항공 장비에 적용되었던 것과 같은 높은 안정성이 요구되며 차이점은 이를 저비용(하드웨어 비용, 실행 시간, 에너지 소모 등)으로 달성해야 한다는 것이다. 세부적인 요구사항은 의료정보기기의 분류와 각 분류별 요구사항의 분석 그리고 이 요구사항 바탕으로한 컴퓨터 시스템 전체설계의 재구성과 프로토타입 개발을 통해서 귀납적으로 도출 가능하다.

> 의료용 컴퓨터의 생산자 또는 소비자가 해당 장비의 기능 및 안정성에 대한 상위 수준의 모델을 기술하면, 이상적인 프래임워크는 이를 자동으로 하드웨어 및 소프트웨어로 매핑하고, 요구된 성능, 실시간성, 전력소모 등에 대한 최적화를 수행하며, 최소한으로 보증이 필요한 안정성에 대한 검증을 수행하는 것이다. 특히, 사용자가 컴퓨터 시스템의 대한 전문적인 지식을 가지고 있지 않은 경우에도 사용자에 의해 기술된 모델을 분석하고 부가적인 의사결정을 사용자로부터 이끌어냄으로써 사용자가 전문가처럼 고안정성 시스템을 설계 및 제작 가능하도록 해야한다. 예를 들면, Fail-Safe 특성이 요구되는 경우 이를 위한 최소한의 컴포넌트를 도출하고 해당 컴포넌트가 이를 만족할 수 있도록 설계를 변형해 사용자에게 이를 채택하도록 권고하는 것이다. 전체적인 과정은 응용에 최적화된 시스템 합성으로 이해될 수 있으며 이러한 응용에 최적화가 필요한 이유는 높은 안정성의 보증과 설계의 최적화를 위해서이다.

> 모든 선구적인 과학자들이 인체를 얘기하고 뇌를 이해하기 위해서 노력하고 있다. 결국 인류가 원하는 지식은 무엇인가? 결국은 뇌의 원리에 대한 이해를 바탕으로 복제인간 및 뇌 이식을 통한 불로장생? 만약 목적이 두뇌를 그대로 놓고 그 외 신체를 이식하는 것이라면 무엇이 필요할까? 잠깐. 인간의 몸은 기관, 세포, 다시 분자, 원자 등등 아주 작은 입자의 조합이다. 음식을 먹고 배설을 하면 결국 이러한 원자는 변하는 것 아닌가? 다시 얘기해서 성장이 멈춘 이후에 10년 전의 나의 몸을 구성하고 있던 원자들이 지금은 몇 %나 내 몸을 구성하고 있을까? 생명체 유기체라는 것은 뭔가?

# Details #

Add your content here.  Format your content with:
  * Text in **bold** or _italic_
  * Headings, paragraphs, and lists
  * Automatic links to other wiki pages