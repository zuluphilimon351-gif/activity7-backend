INSERT INTO records (title, category, description, status)
SELECT v.title, v.category, v.description, v.status
FROM (
  VALUES
    (
      'Lab 3 Wi-Fi connection dropping intermittently',
      'Network',
      'Students report frequent disconnections from the campus Wi-Fi access point in Computer Laboratory 3 during practical sessions.',
      'Pending'
    ),
    (
      'IntelliJ IDEA license activation failure',
      'Software',
      'The educational license key for IntelliJ IDEA on Workstation 12 has expired and needs renewal.',
      'In progress'
    ),
    (
      'Main lecture theatre projector HDMI port broken',
      'Hardware',
      'Lecturers cannot connect laptops to the projection system in Lecture Hall A because the HDMI cable pins are bent.',
      'Pending'
    ),
    (
      'Student portal database slow query timeout',
      'Network',
      'Registration page times out when multiple computer science students attempt to check course enrollments simultaneously.',
      'Completed'
    ),
    (
      'Python 3.11 environment missing OpenCV library',
      'Software',
      'Computer vision practical workstations require the cv2 package installed globally across standard student user profiles.',
      'In progress'
    ),
    (
      'Library computer lab keyboard non-responsive keys',
      'Hardware',
      'Several keys (A, E, Space) on terminal 4 in the main library electronic research room do not register keystrokes.',
      'Pending'
    ),
    (
      'Campus VPN gateway certificate mismatch error',
      'Network',
      'Off-campus students attempting to access internal university research servers receive browser security warnings.',
      'Completed'
    ),
    (
      'Administrative printer paper jam sensor fault',
      'Software',
      'Network printer on the second floor continuously displays a paper jam error even after clearing all trays.',
      'In progress'
    )
) AS v(title, category, description, status)
WHERE NOT EXISTS (
  SELECT 1 FROM records r WHERE r.title = v.title
);