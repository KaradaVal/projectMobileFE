import 'package:flutter/material.dart';
import 'package:project01/models/comicModel.dart';

class comicListManager with ChangeNotifier {
  List<comicModel> _listComic = [
    comicModel(
        judul: "Trash Of Count's Family",
        desc:
            "Birth of a Hero is an ordinary novel where the kind protagonist, Choi Han, loses everyone he loves and falls deep into desperation. In order to get revenge, he leaves his home and heads to a nearby city where he beats up a low-life, drunken noble who was getting on his nerves, a barely relevant moment for this soon-to-be hero's journey. Unfortunately for Kim Roksu, he wakes up as Cale Henituse—the same drunkard noble who is destined to be beaten by Choi Han. However, Roksu has no intentions of letting the story keep its course and intends to live a peaceful life instead. Using his knowledge of the novel from his previous life and the wealth from his current one, he plans to protect himself with the help of ancient spells in case he encounters the main lead. Cale's wish to be free of worries for the rest of his days sounds easy on paper, but his actions might take him and the story in a completely different direction.",
        id: 1,
        cover:
            "https://wp.youtube-anime.com/aln.youtube-anime.com/mcovers/m_tbs/B2APwg3LN97parXQ4/001.png?w=250",
        date: "2024-01-01",
        chapter: [
          {
            "judul": "Trash Of Count's Family",
            "chapter": 0,
            "pageComic": [
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/1.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/2.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/3.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/4.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/5.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/6.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/7.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/8.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/9.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/10.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/11.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/12.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/13.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/14.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/15.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/16.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/17.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/18.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/19.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/20.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/21.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/22.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/23.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/24.jpg"
            ]
          },
          {
            "judul": "Trash Of Count's Family",
            "chapter": 1,
            "pageComic": [
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/1.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/2.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/3.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/4.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/5.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/6.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/7.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/8.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/9.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/10.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/11.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/12.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/13.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/14.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/15.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/16.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/17.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/18.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/19.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/20.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/21.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/22.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/23.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/24.jpg"
            ]
          },
          {
            "judul": "Trash Of Count's Family",
            "chapter": 2,
            "pageComic": [
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/1.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/2.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/3.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/4.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/5.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/6.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/7.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/8.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/9.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/10.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/11.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/12.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/13.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/14.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/15.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/16.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/17.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/18.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/19.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/20.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/21.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/22.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/23.jpg",
              "https://ytimgf.youtube-anime.com/images138/paniJynwMD8YmAxra/0/sub/24.jpg"
            ]
          },
        ],
        lastChapter: "0",
        genre: {"comedy", "fantasy"},
        isBookmark: false),
    comicModel(
        judul: "One Piece",
        desc:
            "Gol D. Roger, a man referred to as the 'King of the Pirates', is set to be executed by the World Government. But just before his demise, he confirms the existence of a great treasure, One Piece, located somewhere within the vast ocean known as the Grand Line. Announcing that One Piece can be claimed by anyone worthy enough to reach it, the King of the Pirates is executed and the Great Age of Pirates begins. Twenty-two years later, a young man by the name of Monkey D. Luffy is ready to embark on his own adventure, searching for One Piece and striving to become the new King of the Pirates. Armed with just a straw hat, a small boat, and an elastic body, he sets out on a fantastic journey to gather his own crew and a worthy ship that will take them across the Grand Line to claim the greatest status on the high seas.",
        id: 2,
        cover:
            "https://wp.youtube-anime.com/aln.youtube-anime.com/mcovers/m_tbs/v9GG2hqJDaTA2HmmF/001.png?w=250",
        date: "2024-02-01",
        chapter: [
          {
            "judul": "One Piece",
            "chapter": 0,
            "comicPage": [
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/1.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/2.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/3.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/4.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/5.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/6.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/7.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/8.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/9.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/10.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/11.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/12.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/13.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/14.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/15.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/16.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/17.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/18.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/19.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/20.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/21.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/22.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/23.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/24.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/25.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/26.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/27.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/28.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/29.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/30.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/31.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/32.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/33.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/34.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/35.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/36.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/37.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/38.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/39.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/40.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/41.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/42.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/43.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/44.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/45.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/46.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/47.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/48.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/49.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/50.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/51.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/52.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/53.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/54.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/55.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/56.png",
              "https://ytimgf.youtube-anime.com/images138/ex9vXC6gWYY9bGkSo/1/sub/57.png"
            ]
          }
        ],
        lastChapter: "1",
        genre: {"pirate", "comedy"},
        isBookmark: false),
    comicModel(
        judul: "The Perfect Hybrid",
        desc:
            "Earth had been invaded by creatures from another dimension, and it has been a few years since peace was restored, thanks to the help of various supernatural humans that revealed themselves during this invasion. Gwangik Yu, our protagonist, was born between two supernatural parents. His father is an immortal while his mother is a transformer with exceptional physical abilities along with the power to transform into beasts. Neither parent, however, is aware of each spouse’s power and both want Gwangik to follow in their footsteps.",
        id: 3,
        cover:
            "https://wp.youtube-anime.com/aln.youtube-anime.com/mcovers/m_tbs/QQeRgZZAooHsTArKx/001.png?w=250",
        date: "2024-01-03",
        chapter: [
          {
            "judul": "The Perfect Hybrid",
            "chapter": 0,
            "pageComic": [
              "https://ytimgf.youtube-anime.com/images139/TdxM9kXPvGNeKPxXv/0/sub/1.png",
              "https://ytimgf.youtube-anime.com/images139/TdxM9kXPvGNeKPxXv/0/sub/2.jpg",
              "https://ytimgf.youtube-anime.com/images139/TdxM9kXPvGNeKPxXv/0/sub/3.jpg",
              "https://ytimgf.youtube-anime.com/images139/TdxM9kXPvGNeKPxXv/0/sub/4.jpg",
              "https://ytimgf.youtube-anime.com/images139/TdxM9kXPvGNeKPxXv/0/sub/5.jpg",
              "https://ytimgf.youtube-anime.com/images139/TdxM9kXPvGNeKPxXv/0/sub/6.jpg",
              "https://ytimgf.youtube-anime.com/images139/TdxM9kXPvGNeKPxXv/0/sub/7.jpg",
              "https://ytimgf.youtube-anime.com/images139/TdxM9kXPvGNeKPxXv/0/sub/8.jpg"
            ]
          }
        ],
        lastChapter: "1",
        genre: {"comedy", "supernatural"},
        isBookmark: false),
    comicModel(
        judul: "The Greatest Estate Developer",
        desc:
            "When civil engineering student Suho Kim falls asleep reading a fantasy novel, he wakes up as a character in the book! Suho is now in the body of Lloyd Frontera, a lazy noble who loves to drink, and whose family is in a mountain of debt. Using his engineering knowledge, Suho designs inventions to avert the terrible future that lies in wait for him. With the help of a giant hamster, a knight, and the world's magic, can Suho dig his new family out of debt and build a better future?",
        id: 4,
        cover:
            "https://wp.youtube-anime.com/aln.youtube-anime.com/mcovers/m_tbs/k9DkW7ugEtnfM8P39/001.jpg?w=250",
        date: "2024-01-01",
        chapter: [
          {
            "judul": "The Greatest Estate Developer",
            "chapter": 0,
            "comicPage": [],
          }
        ],
        lastChapter: "1",
        genre: {"comedy", "fantasy", 'isekai'},
        isBookmark: false),
    comicModel(
        judul: "Im The Max Level Newbie",
        desc:
            "Kang Jinhyeok, a gaming streamer and content creator, is the only person who has cleared the game 'Tower of Trials'. However, as the game's popularity declines, it becomes increasingly difficult for him to continue making a living as a content creator. Jinhyeok prepares to end his 11-year-long relationship with the game and say goodbye to his humble group of subscribers. But on that very day, the Tower of Trials appears in reality with a message saying that humanity will perish unless all players clear each floor within 90 days. Jinhyeok, who knows the game better than anyone, decides to use his knowledge to his advantage and dominate the tower. It's time to show everyone what a hardcore gamer can do!",
        id: 5,
        cover:
            "https://wp.youtube-anime.com/aln.youtube-anime.com/images4/__Manga__/thumbnail/S2vgaxGkeMZhcNHdS.html?w=250",
        date: "2024-01-01",
        chapter: [
          {
            "judul": "Im The Max Level Newbie",
            "chapter": 0,
            "comicPage": [
              "https://ytimgf.youtube-anime.com/images137/S2vgaxGkeMZhcNHdS/0/sub/1.png",
              "https://ytimgf.youtube-anime.com/images137/S2vgaxGkeMZhcNHdS/0/sub/2.jpg",
              "https://ytimgf.youtube-anime.com/images137/S2vgaxGkeMZhcNHdS/0/sub/3.jpg",
              "https://ytimgf.youtube-anime.com/images137/S2vgaxGkeMZhcNHdS/0/sub/4.jpg",
              "https://ytimgf.youtube-anime.com/images137/S2vgaxGkeMZhcNHdS/0/sub/5.jpg",
              "https://ytimgf.youtube-anime.com/images137/S2vgaxGkeMZhcNHdS/0/sub/6.jpg",
              "https://ytimgf.youtube-anime.com/images137/S2vgaxGkeMZhcNHdS/0/sub/7.jpg",
              "https://ytimgf.youtube-anime.com/images137/S2vgaxGkeMZhcNHdS/0/sub/8.jpg",
              "https://ytimgf.youtube-anime.com/images137/S2vgaxGkeMZhcNHdS/0/sub/9.jpg",
              "https://ytimgf.youtube-anime.com/images137/S2vgaxGkeMZhcNHdS/0/sub/10.jpg",
              "https://ytimgf.youtube-anime.com/images137/S2vgaxGkeMZhcNHdS/0/sub/11.jpg",
              "https://ytimgf.youtube-anime.com/images137/S2vgaxGkeMZhcNHdS/0/sub/12.jpg",
              "https://ytimgf.youtube-anime.com/images137/S2vgaxGkeMZhcNHdS/0/sub/13.jpg",
              "https://ytimgf.youtube-anime.com/images137/S2vgaxGkeMZhcNHdS/0/sub/14.jpg",
              "https://ytimgf.youtube-anime.com/images137/S2vgaxGkeMZhcNHdS/0/sub/15.jpg",
              "https://ytimgf.youtube-anime.com/images137/S2vgaxGkeMZhcNHdS/0/sub/16.jpg"
            ]
          }
        ],
        lastChapter: "1",
        genre: {"comedy", "fantasy", 'action'},
        isBookmark: false),
    comicModel(
        judul: "Dungeon Meshi",
        desc:
            "After the Golden Kingdom is sunk underground by an insane magician, its king emerges, promising all of his treasure to any who defeat the magician, before crumbling to dust. Guilds are spurred on by this promise, traversing the labyrinthine dungeon in search of the magician. Laios, the leader of one such guild, encounters a dragon that wipes out his party and devours his sister Falin. Despite having lost the entirety of their supplies and belongings, Laios along with Marcille, an elven healer, and Chilchuck, a halfling thief, immediately reenter the dungeon, determined to save Falin. Time being of the essence, Laios suggests the taboo of eating the monsters of the dungeon as a means of gathering supplies. Upon the preparation of their first meal in the dungeon, they are stopped by an onlooking dwarf named Senshi. An enthusiast of monster cooking, he helps them prepare their monster ingredients for safe consumption. After learning of Laios' circumstances, Senshi expresses his desire to cook a dragon and joins their guild, thus beginning their food-filled foray into the dungeon together",
        id: 6,
        cover:
            "https://wp.youtube-anime.com/aln.youtube-anime.com/mcovers/m_tbs/jHNgqiK3ZD3niF7tn/001.jpg?w=250",
        date: "2024-02-01",
        chapter: [
          {
            "judul": "Dungeon Meshi",
            "chapter": 0,
            "comicPage": [
              "https://ytimgf.youtube-anime.com/images/5mnDWxdhiWM7fEAxJ/0/sub_1.jpg",
              "https://ytimgf.youtube-anime.com/images/5mnDWxdhiWM7fEAxJ/0/sub_2.jpg",
              "https://ytimgf.youtube-anime.com/images/5mnDWxdhiWM7fEAxJ/0/sub_3.jpg",
              "https://ytimgf.youtube-anime.com/images/5mnDWxdhiWM7fEAxJ/0/sub_4.jpg",
              "https://ytimgf.youtube-anime.com/images/5mnDWxdhiWM7fEAxJ/0/sub_5.jpg",
              "https://ytimgf.youtube-anime.com/images/5mnDWxdhiWM7fEAxJ/0/sub_6.jpg",
              "https://ytimgf.youtube-anime.com/images/5mnDWxdhiWM7fEAxJ/0/sub_7.jpg",
              "https://ytimgf.youtube-anime.com/images/5mnDWxdhiWM7fEAxJ/0/sub_8.jpg"
            ]
          }
        ],
        lastChapter: "1",
        genre: {"comedy"},
        isBookmark: false),
    comicModel(
        judul: "Ranker's Return",
        desc:
            "In the early days of the virtual reality game, Arena, MeleeGod was the strongest ranked player! He deleted his character and suddenly left. In order to restore his bankrupt family, he returned to Arena! 'Do you want to create a character?'",
        id: 7,
        cover:
            "https://wp.youtube-anime.com/thumb.mghcdn.com/mrc/ranker-s-return-remake.jpg?w=250",
        date: "2023-01-01",
        chapter: [
          {
            "judul": "Ranker's Return",
            "chapter": 0,
            "comicPage": [
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/1.jpg",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/2.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/3.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/4.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/5.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/6.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/7.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/8.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/9.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/10.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/11.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/12.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/13.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/14.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/15.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/16.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/17.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/18.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/19.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/20.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/21.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/22.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/23.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/24.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/25.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/26.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/27.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/28.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/29.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/30.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/31.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/32.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/33.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/34.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/35.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/36.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/37.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/38.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/39.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/40.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/41.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/42.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/43.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/44.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/45.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/46.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/47.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/48.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/49.png",
              "https://ytimgf.youtube-anime.com/images139/fi3vZRTkCeCpGkpWp/1/sub/50.png"
            ]
          }
        ],
        lastChapter: "1",
        genre: {"comedy", 'action'},
        isBookmark: false),
  ];

  final Set<String> _listGenre = {};

  void checkBookmark(int index) {
    _listComic[index].isBookmark = !_listComic[index].isBookmark;
    notifyListeners();
  }

  List<comicModel> get listComic => _listComic;
}
