import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'helper.dart'; 

void main() {
  runApp(MyWebPage());
}

class MyWebPage extends StatelessWidget {

  // global key for projects widget - scroll container
  final GlobalKey _projectsKey = GlobalKey();
  final ScrollController _scrollController = ScrollController();

  MyWebPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // nav bar, theme
      title: 'PORTFOLIO',
      theme: ThemeData(
        textTheme: GoogleFonts.robotoMonoTextTheme(
          Theme.of(context).textTheme.apply(
                bodyColor: const Color.fromARGB(255, 246, 223, 223),
                displayColor: const Color.fromARGB(255, 246, 223, 223),
              ),
        ),
        appBarTheme: AppBarTheme(
          titleTextStyle: GoogleFonts.robotoMono(color: const Color.fromARGB(255, 226, 213, 203), fontSize: 20),
          backgroundColor: const Color.fromARGB(255, 126, 128, 164),
          foregroundColor: const Color.fromARGB(255, 246, 223, 223),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,

          title: TextButton(
            // scroll function call
            onPressed: () => scrollToProjects(_projectsKey), 
            child: Text(
              'Projects',
              style: GoogleFonts.robotoMono(
                color: const Color.fromARGB(255, 246, 223, 223),
                fontSize: 20,
              ),
            ),
          ),

          // images, takes in list of widgets
          actions: [
            IconButton(
              constraints: const BoxConstraints(maxHeight: 40),
              iconSize: 15,
              icon: Image.asset('assets/linked.png'),
              onPressed: linkedin, 
            ),
            const SizedBox(width: 15),
            IconButton(
              constraints: const BoxConstraints(maxHeight: 40),
              iconSize: 15,
              icon: Image.asset('assets/githubtwo.png'),
              onPressed: github, 
            ),
          ],
        ),

        backgroundColor: const Color.fromARGB(255, 26, 26, 46),

        body: SingleChildScrollView(
          controller: _scrollController,

          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // name
                Text(
                  'Naziat Chowdhury',
                  style: GoogleFonts.robotoMono(
                    fontSize: 48.0,
                    fontWeight: FontWeight.normal,
                    color: const Color.fromARGB(255, 246, 223, 223),
                  ),
                ),
                // spacing
                const SizedBox(height: 10),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  // description
                  child: Text(
                    "I'm a second year Computer Science major at the University of Central Florida.\n"
                    "I'm interested in full stack development and \nweb design! My relevant coursework includes data structures\n and algorithms, calculus 1 + 2, statistical methods, and security in computing.",
                    textAlign: TextAlign.center,
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "I'm currently a Computer Science intern at Limbitless\n Solutions, a nonprofit dedicated to increasing accessibility in the limb difference community.",
                    textAlign: TextAlign.center,
                  ),
                ),

                // experience
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  child: Text(
                    'EXPERIENCE:',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal),
                  ),
                ),

                // buttons for experience
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 126, 128, 164),
                    foregroundColor: const Color.fromARGB(255, 246, 223, 223),
                  ),
                  onPressed: () {},
                  child: const Text('Girls Who Code Web Development Team'),
                ),

                const SizedBox(height: 10),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 126, 128, 164),
                    foregroundColor: const Color.fromARGB(255, 246, 223, 223),
                  ),
                  onPressed: () {},
                  child: const Text('Google Developer Student Club'),
                ),

                const SizedBox(height: 10),
                
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 126, 128, 164),
                    foregroundColor: const Color.fromARGB(255, 246, 223, 223),
                  ),
                  onPressed: () {},
                  child: const Text('Knighthacks'),
                ),

                const SizedBox(height: 10),
                const SizedBox(height: 20),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'TECHNICAL SKILLS:',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal),
                  ),
                ),
                const SizedBox(height: 10),

                const Text(
                  'LANGUAGES',
                  style: TextStyle(fontSize: 23, 
                  fontWeight: FontWeight.normal, 
                  color: Color.fromARGB(255, 246, 223, 223)),
                ),

                const SizedBox(height: 10),

                // row - wrap for overflow
                // language buttons
                Wrap(
                  spacing: 5,
                  runSpacing: 5,

                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 126, 128, 164),
                        foregroundColor: const Color.fromARGB(255, 246, 223, 223),
                      ),
                      onPressed: () {},
                      child: const Text('Python'),
                    ),

                    const SizedBox(width: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 126, 128, 164),
                        foregroundColor: const Color.fromARGB(255, 246, 223, 223),
                      ),
                      onPressed: () {},
                      child: const Text('C'),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 126, 128, 164),
                        foregroundColor: const Color.fromARGB(255, 246, 223, 223),
                      ),
                      onPressed: () {},
                      child: const Text('HTML/CSS'),
                    ),
                    const SizedBox(width: 10),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 126, 128, 164),
                        foregroundColor: const Color.fromARGB(255, 246, 223, 223),
                      ),
                      onPressed: () {},
                      child: const Text('Go'),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 126, 128, 164),
                        foregroundColor: const Color.fromARGB(255, 246, 223, 223),
                      ),
                      onPressed: () {},
                      child: const Text('Javascript'),
                    ),
                  ],
                ),
                const SizedBox(height: 10),

                const Text(
                  'TOOLS',
                  style: TextStyle(fontSize: 23, 
                  fontWeight: FontWeight.normal, 
                  color: Color.fromARGB(255, 246, 223, 223)),
                ),
                const SizedBox(height: 10),

              // tools buttons
                Wrap(
                  spacing: 2,
                  runSpacing: 2,

                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 126, 128, 164),
                        foregroundColor: const Color.fromARGB(255, 246, 223, 223),
                      ),
                      onPressed: () {},
                      child: const Text('Figma'),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 126, 128, 164),
                        foregroundColor: const Color.fromARGB(255, 246, 223, 223),
                      ),
                      onPressed: () {},
                      child: const Text('VSCode'),
                    ),
                    const SizedBox(width: 10),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 126, 128, 164),
                        foregroundColor: const Color.fromARGB(255, 246, 223, 223),
                      ),
                      onPressed: () {},
                      child: const Text('Microsoft Excel'),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 126, 128, 164),
                        foregroundColor: const Color.fromARGB(255, 246, 223, 223),
                      ),
                      onPressed: () {},
                      child: const Text('Github'),
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
                const SizedBox(height: 10),
                const SizedBox(height: 20),

                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    // projects widget
                    children: <Widget>[
                      const Text(
                        'PROJECTS:',
                        style: TextStyle(
                          fontSize: 33.0,
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 246, 223, 223),
                        ),
                      ),
                      const SizedBox(height: 15.0),

                      // projects container box, key to autoscroll
                      Container(
                        key: _projectsKey,
                        padding: const EdgeInsets.all(9.0),
                        width: MediaQuery.of(context).size.width * 0.4,

                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 26, 26, 46),
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: const Color.fromARGB(255, 246, 223, 223),
                            width: 1.5,
                          ),
                        ),
                        child: Column(
                          children: [
                            const Text(
                              'QUALIDAY',
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.normal,
                                color: Color.fromARGB(255, 246, 223, 223),
                              ),
                            ),
                            Image.asset('assets/qualiday.png', 
                            width: 500.0, 
                            height: 400.0, 
                            fit: BoxFit.contain),

                            const SizedBox(height: 10.0),
                          
                            // project details - wrap for overflow
                            Wrap(
                              spacing: 5,
                              runSpacing: 5,
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(255, 126, 128, 164),
                                    foregroundColor: const Color.fromARGB(255, 246, 223, 223),
                                  ),
                                  onPressed: () {},
                                  child: const Text('Javascript'),
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(255, 126, 128, 164),
                                    foregroundColor: const Color.fromARGB(255, 246, 223, 223),
                                  ),
                                  onPressed: () {},
                                  child: const Text('mySQL'),
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(255, 126, 128, 164),
                                    foregroundColor: const Color.fromARGB(255, 246, 223, 223),
                                  ),
                                  onPressed: () {},
                                  child: const Text('HTML/CSS'),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10.0),
                          
                            const Text(
                              'To do list web application\n\nIntegrates real time weather API\n\nImplements MySQL to store user information',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.normal,
                                color: Color.fromARGB(255, 246, 223, 223),
                              ),
                            ),

                            // website link, function call to launch
                            TextButton(
                              onPressed: () async {
                                const url = 'https://girlswhocodeucf.github.io/Qualiday/todo.html';
                                if (await canLaunchUrlString(url)) {
                                  await launchUrlString(url);
                                }
                              },

                              child: const Text(
                                "LINK",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 126, 128, 164),
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
