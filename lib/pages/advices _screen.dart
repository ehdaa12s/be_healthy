import 'package:be_healthy/constant/constant.dart';
import 'package:flutter/material.dart';

class AdvicesScreen extends StatefulWidget {
  const AdvicesScreen({super.key});

  @override
  State<AdvicesScreen> createState() => _AdvicesScreenState();
}

class _AdvicesScreenState extends State<AdvicesScreen> {
  @override
//  late  FlutterYoutubeViewController _controller;

  // void _onYoutubeCreated(FlutterYoutubeViewController controller) {
  //  _controller = controller;
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3, // number of tabs
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: kprimaryColor,
            title: const Text('النصائح الطبية'),
            bottom: const TabBar(
              indicatorColor: Colors.black,
              labelColor: Colors.white,
              tabs: [
                Tab(
                  text: 'مرضي السكري',
                ),
                Tab(
                  text: 'مرضي الحساسية',
                ),
                Tab(
                  text: 'مرضي القلب',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              // first tab bar view widget
              ListView(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 16.0,
                        ),
                        /*     FlutterYoutubeView(
                          onViewCreated: _onYoutubeCreated,

                          params: YoutubeParam(
                            videoId: 'https://youtu.be/c1RN9dgoBiI', // Replace with the actual video ID
                            showUI: false,
                            startSeconds: 0.0,
                          ),
                        ),*/

                        SizedBox(
                          height: 16.0,
                        ),

                        //  Image(
                        //  image:
                        //  AssetImage('assets/images/20210621110646646.jpg'),
                        //   ),

                        // TextViewerPage(textViewer: TextViewer('')),
                        Text(
                          '  1- حمية منخفضة الكربوهيدرات                 '
                          '\n'
                          'يجب ألا تزيل الكربوهيدرات تمامًا من طعامك ، بل عليك اتباع نظام غذائي منخفض الكربوهيدرات، نصح لوك بأنه يجب عليك اتباع "نظام غذائي منخفض الكربوهيدرات" بدلاً من "نظام غذائي خالٍ من الكربوهيدرات".'
                          '\n'
                          '2. البروتين والدهون الجيدة'
                          '\n'
                          ' حاول أن تستهلك الكميات المناسبة من البروتين والدهون الجيدة حسب متطلبات واحتياجات نوع جسمك.'
                          '\n'
                          ' 3. المشي بعد الوجبات'
                          '\n'
                          'من المهم أن تمشي 10 دقائق على الأقل بعد الوجبات، سوف يساعدك على هضم الطعام بشكل صحيح وبمعدل أسرع.'
                          '\n'
                          '4. فاكهة منخفضة السكريات'
                          '\n'
                          ' يجب عليك التقليل من تناول الفاكهة وتناول ثمار منخفضة نسبة السكر في الدم (GI منخفض) فقط إذا لزم الأمر، بالنسبة لمرضى السكر ، من الآمن تناول ثمار منخفضة المؤشر الجلايسيمي في أي يوم.'
                          '\n'
                          '5. التمرين'
                          '\n'
                          ' اجعل التمرين جزءًا من روتينك اليومي، تذكر أنك لست مضطرًا لممارسة الرياضة كثيرًا حتى ينتهي بك الأمر بإرهاق نفسك أكثر من اللازم أو تشعر بالتعب ولكن ليس بالقليل أيضًا، ابحث عن التوازن أثناء ممارسة الرياضة.'
                          '\n'
                          '6. النوم'
                          '\n'
                          'اعمل على "عادات النوم العميق"، يجب ألا تتنازل عن نومك، امنح جسمك الراحة التي يحتاجها.'
                          '\n'
                          '7. الصحة العاطفية'
                          '\n'
                          'عليك أن تواصل العمل باستمرار على صحتك العاطفية لتعيش حياة سعيدة وصحية.'
                          '\n'
                          '8. تقليل علامات الالتهاب'
                          '\n'
                          ' الابتعاد عن الأطعمة التي تؤدي إلى الالتهاب ومشاكل أخرى.'
                          '\n'
                          '9. نظام غذائي صحي'
                          '\n'
                          ' اتبع خطة نظام غذائي صحي، حاول تضمين التوابل والأعشاب والخضروات والماء والبذور والمكسرات والألياف القابلة للذوبان وغير القابلة للذوبان في نظامك الغذائي.'
                          '\n'
                          ' 10.  الصوم المتقطع'
                          '\n'
                          ' يمكنك القيام بذلك ولكن فقط عندما تعلم أنك تفعل ذلك بالطريقة الصحيحة، الصيام المتقطع هو نمط من الأكل بين فترات الأكل والصيام.',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              // second tab bar viiew widget
              ListView(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 16.0,
                        ),
                        Image(
                            image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtgSPU3nWXh5ECplJGrQhLHKpAdF2Z6Y6w_Q&usqp=CAU')),
                        Text(
                          '- يجب الكمامة أثناء الخروج من المنزل، تجنبا لدخول الهواء المحمل بالأتربة وحبوب اللباح، إلى مجرى الهواء العلوى والشعب الهوائية مما يسبب نوبات الربو الحساسية .'
                          '\n'
                          ' - الحرص على تناول كمية كبيرة من المياه، على مدار اليوم، للحفاظ على مجرى الهواء العلوى رطب وعدم جفافة، مما يقلل من الاصابة بنوبات الحساسية، والإصابة بفيروس كوروونا كما أنه يعمل تحسين تدفق الأكسجين إلى الرئة.'
                          '\n'
                          '- النوم فترات كافية أثناء الليل وتقليل النوم بالنهار لتحسين الجهاز المناعى وتقليل نوبات الربو.'
                          '\n'
                          ' - الاهتمام بالتغذية وتناول الخضروات والفواكه الطازجة .'
                          '\n'
                          ' - الابتعاد عن العطور والمنظفات الكيماوية والمواد الكيماوية الأخرى التى تسبب الحساسية ونوبات الربو.'
                          '\n'
                          ' - التأكد من غلق نوافذ المنزل جيدا، لمنع دخول الأتربة والغبار في الغرف كما لابد من غلق النوافذ فترة الصباح الباكر وإخر النهار طوال فصب الربيع حيث انها اوقات نشاط حبوب اللقاح والتى تسبب نوبات الربو والحساسية الأنفية والجيوب الأنفية'
                          '\n'
                          ' - كذلك غلق نوافذ السيارات أثناء التنقل بالشارع لمنع دخول الأتربة وحبوب اللقاح واستنشاقها.'
                          '\n'
                          '- عدم ممارسة الرياضة أو المشى فى أماكن مفتوحة أثناء موجة انتشار الأتربة'
                          '\n'
                          ' - ينصح بوضع أدوية الحساسية في الحقيبة عند الخروج، وتناولها في مواعيدها التي يحددها الطبيب.'
                          '\n'
                          ' - عدم تخفيف الملابس فى فترات الليل او الصباح الباكر لعدم التعرض لأى نوبات برد .',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              // third tab bar viiew widget
              ListView(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 16,
                        ),
                        Image(
                            image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFP5CvwjfBuCbcgKBTlJg86GWxuRhGex-7mA&usqp=CAU')),
                        Text(
                          '1.تجنب الإجهاد الشديد فى العمل سواء عضلى أو ذهنى، لا يجب أن يقوم الشخص بمجهود أكبر من طاقته.'
                          '\n'
                          ' 2.البعد عن طلوع السلم حتى لا يتم التعرض لأى مضاعفات ومشاكل صحية .'
                          '\n'
                          ' 3. من الضرورى الابتعاد عن المناقشات التى تضعك فى توتر نفسى وعضلى .'
                          '\n'
                          '  4.الابتعاد تماما عن أى  شيء يسبب الإجهاد العضلى .'
                          '\n'
                          ' 5.الحرص على تنظيم العمل ووضع خطوات يتم إتباعها خلال اليوم .'
                          '\n'
                          ' 6.قضاء 8 ساعات من العمل لا يجب أن تزيد بأى حال من الأحوال، ومن الضرورى أخذ فترات راحة  خلال ساعات العمل .'
                          '\n'
                          '  7.تجنب تناول الأكلات السريعة ومن الأفضل تناول أطعمة صحية كالخضروات والفاكهة والأطعمة الغنية بالألياف .'
                          '\n'
                          '   8.الابتعاد عن التدخين تماما .'
                          '\n'
                          '  9. الاقلال من شرب القهوة والشاى بقدر الإمكان .'
                          '\n'
                          ' 10.الحرص على أخذ الأدوية أثناء العمل ولا يجب نسيانها أبدا أثناء انشغالك .',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
