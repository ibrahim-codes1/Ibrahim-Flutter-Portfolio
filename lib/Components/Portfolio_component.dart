import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/widgets/Buttons/haptic_text_button.dart';
import 'package:portfolio/widgets/Cursor/animated_circle_cursor.dart';
import 'package:portfolio/widgets/Misc/title_heading.dart';
import 'package:portfolio/widgets/Text/poppins.dart';
import 'package:url_launcher/url_launcher.dart';

// ─── Project Data Model ───────────────────────────────────────────────────────

class ProjectModel {
  final String title;
  final String subtitle;
  final String description;
  final String category;
  final IconData icon;
  final List<Color> gradientColors;
  final String githubUrl;
  final List<String> tags;

  ProjectModel({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.category,
    required this.icon,
    required this.gradientColors,
    required this.githubUrl,
    required this.tags,
  });
}

// ─── All Projects List ────────────────────────────────────────────────────────

final List<ProjectModel> allProjects = [
  ProjectModel(
    title: "TyamoApp",
    subtitle: "Full-Stack Flutter Application",
    description:
    "A complete mobile app with clean UI, Firebase authentication, and real-time cloud data storage.",
    category: "Flutter",
    icon: FontAwesomeIcons.fire,
    gradientColors: [Color(0xffFF451B), Color(0xffFF7043)],
    githubUrl: "https://github.com/ibrahim-codes1/Flutter-TyamoApp",
    tags: ["Flutter", "Firebase", "Auth"],
  ),
  ProjectModel(
    title: "WhatsApp UI Clone",
    subtitle: "Flutter Front-End Project",
    description:
    "Pixel-perfect WhatsApp screen layout replica demonstrating advanced Flutter UI skills.",
    category: "Flutter",
    icon: FontAwesomeIcons.whatsapp,
    gradientColors: [Color(0xff25D366), Color(0xff128C7E)],
    githubUrl: "https://github.com/ibrahim-codes1/Flutter-whatsapp-UI",
    tags: ["Flutter", "UI/UX", "Clone"],
  ),
  ProjectModel(
    title: "Calculator App",
    subtitle: "Interactive Flutter Utility",
    description:
    "A fully functional calculator app that handles all math operations with a clean modern design.",
    category: "Flutter",
    icon: FontAwesomeIcons.calculator,
    gradientColors: [Color(0xff6C63FF), Color(0xff3F3D97)],
    githubUrl: "https://github.com/ibrahim-codes1/Flutter-Calculator",
    tags: ["Flutter", "Dart", "Utility"],
  ),
  ProjectModel(
    title: "Lottery App",
    subtitle: "Interactive Flutter Utility",
    description:
    "A fun app that generates random lottery results with smooth animations.",
    category: "Flutter",
    icon: FontAwesomeIcons.diceD6,
    gradientColors: [Color(0xffF7971E), Color(0xffFFD200)],
    githubUrl: "https://github.com/ibrahim-codes1/flutter-lottery-app",
    tags: ["Flutter", "Animation", "Random"],
  ),
  ProjectModel(
    title: "MBox UI",
    subtitle: "Modern Screen Design",
    description:
    "A beautiful and modern UI screen design project built with Flutter.",
    category: "Flutter",
    icon: FontAwesomeIcons.mobileScreenButton,
    gradientColors: [Color(0xffFC5C7D), Color(0xff6A3093)],
    githubUrl: "https://github.com/ibrahim-codes1/Flutter-mBox",
    tags: ["Flutter", "UI Design", "Mobile"],
  ),
  ProjectModel(
    title: "SuperMarket Billing",
    subtitle: "C++ OOP Project",
    description:
    "A C++ billing system to handle item tracking and invoicing using Object Oriented Programming principles.",
    category: "C++",
    icon: FontAwesomeIcons.cartShopping,
    gradientColors: [Color(0xff2193b0), Color(0xff6dd5ed)],
    githubUrl: "https://github.com/ibrahim-codes1/SuperMarket-Billing-System-OOP-C-",
    tags: ["C++", "OOP", "Billing"],
  ),
  ProjectModel(
    title: "Coffee Shop System",
    subtitle: "C++ OOP Project",
    description:
    "A C++ management system for daily coffee shop operations: orders, menu display, and billing.",
    category: "C++",
    icon: FontAwesomeIcons.mugHot,
    gradientColors: [Color(0xff6F4E37), Color(0xffC9A96E)],
    githubUrl: "https://github.com/ibrahim-codes1/Coffee-Shop-OOP-C-",
    tags: ["C++", "OOP", "Management"],
  ),
  ProjectModel(
    title: "ATM System",
    subtitle: "C++ Fundamentals Project",
    description:
    "A C++ ATM simulation where users can log in, check balance, and perform deposit/withdrawal.",
    category: "C++",
    icon: FontAwesomeIcons.creditCard,
    gradientColors: [Color(0xff373B44), Color(0xff4286f4)],
    githubUrl: "https://github.com/ibrahim-codes1/ATM-Project-PF-C-",
    tags: ["C++", "Basics", "Banking"],
  ),
];

// ─── Main Portfolio Component ─────────────────────────────────────────────────

class PortfolioComponent extends StatefulWidget {
  const PortfolioComponent({super.key});

  @override
  State<PortfolioComponent> createState() => _PortfolioComponentState();
}

class _PortfolioComponentState extends State<PortfolioComponent> {
  String selectedCategory = "All";

  List<ProjectModel> get filteredProjects {
    if (selectedCategory == "All") return allProjects;
    return allProjects
        .where((p) => p.category == selectedCategory)
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(80),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            spreadRadius: 10,
            blurRadius: 20,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ── Section Heading
          TitleHeading(
            title: "Personal Projects I\nBuilt to Learn & Grow",
            Subtitle: "Portfolio",
          ),

          const SizedBox(height: 30),

          // ── Category Filter Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _filterButton("All"),
              _filterButton("Flutter"),
              _filterButton("C++"),
            ],
          ),

          const SizedBox(height: 40),

          // ── Projects Grid
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 0.85,
            ),
            itemCount: filteredProjects.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return _ProjectCard(project: filteredProjects[index]);
            },
          ),
        ],
      ),
    );
  }

  // ── Filter Button Builder
  Widget _filterButton(String label) {
    final bool isSelected = selectedCategory == label;
    return Haptictextbutton(
      text: label,
      color: isSelected ? const Color(0xffFF451B) : Colors.black,
      onpressed: () {
        setState(() {
          selectedCategory = label;
        });
      },
    );
  }
}

// ─── Project Card Widget ──────────────────────────────────────────────────────

class _ProjectCard extends StatefulWidget {
  final ProjectModel project;
  const _ProjectCard({required this.project});

  @override
  State<_ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<_ProjectCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnim;
  bool _isHovered = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 150),
    );
    _scaleAnim = Tween<double>(begin: 1.0, end: 1.03).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedCircleCursorMouseRegion(
      child: MouseRegion(
        onEnter: (_) {
          setState(() => _isHovered = true);
          _controller.forward();
        },
        onExit: (_) {
          setState(() => _isHovered = false);
          _controller.reverse();
        },
        child: ScaleTransition(
          scale: _scaleAnim,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: widget.project.gradientColors.first.withOpacity(
                    _isHovered ? 0.35 : 0.12,
                  ),
                  blurRadius: _isHovered ? 25 : 12,
                  spreadRadius: _isHovered ? 3 : 1,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Stack(
                children: [
                  // ── Gradient Background
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: widget.project.gradientColors,
                        ),
                      ),
                    ),
                  ),

                  // ── Subtle pattern circles
                  Positioned(
                    top: -20,
                    right: -20,
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(0.08),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -30,
                    left: -10,
                    child: Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(0.06),
                      ),
                    ),
                  ),

                  // ── Card Content
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Icon circle
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: FaIcon(
                            widget.project.icon,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),

                        const SizedBox(height: 16),

                        // Title
                        Poppins(
                          text: widget.project.title,
                          fontWeight: FontWeight.w800,
                          fontSize: 18,
                          color: Colors.white,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),

                        const SizedBox(height: 4),

                        // Subtitle
                        Poppins(
                          text: widget.project.subtitle,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.white.withOpacity(0.75),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),

                        const SizedBox(height: 12),

                        // Description
                        Expanded(
                          child: Poppins(
                            text: widget.project.description,
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Colors.white.withOpacity(0.9),
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),

                        const SizedBox(height: 12),

                        // Tags row
                        Wrap(
                          spacing: 6,
                          runSpacing: 6,
                          children: widget.project.tags
                              .map((tag) => _Tag(label: tag))
                              .toList(),
                        ),

                        const SizedBox(height: 14),

                        // GitHub button
                        GestureDetector(
                          onTap: () async {
                            final uri =
                            Uri.parse(widget.project.githubUrl);
                            if (await canLaunchUrl(uri)) {
                              await launchUrl(uri);
                            }
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 14,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: Colors.white.withOpacity(0.4),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const FaIcon(
                                  FontAwesomeIcons.github,
                                  color: Colors.white,
                                  size: 14,
                                ),
                                const SizedBox(width: 6),
                                Poppins(
                                  text: "View on GitHub",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ],
                            ),
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
      ),
    );
  }
}

// ─── Tag Chip Widget ──────────────────────────────────────────────────────────

class _Tag extends StatelessWidget {
  final String label;
  const _Tag({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.18),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Poppins(
        text: label,
        fontSize: 10,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    );
  }
}