# Run Queue

Run order, top to bottom, DERIVED from data/registry.json (the photographer queue).
Do not hand-edit: run `python3 scripts/gen_site_registry.py` after changing a
photographer's stage. Statuses: `PENDING`, `DONE`, `SKIPPED`. This table exists so
the refsite build gate (scripts/validate.py) can cross-check the site registry; the
real queue and state live in data/registry.json.

| #   | slug                      | item                      | status  |
|-----|---------------------------|---------------------------|---------|
| 00  | how-this-book-is-built    | How this book is built    | DONE    |
| 01  | nicephore-niepce          | Nicéphore Niépce          | DONE    |
| 02  | louis-daguerre            | Louis Daguerre            | DONE    |
| 03  | william-henry-fox-talbot  | William Henry Fox Talbot  | DONE    |
| 04  | anna-atkins               | Anna Atkins               | DONE    |
| 05  | hippolyte-bayard          | Hippolyte Bayard          | DONE    |
| 06  | hill-adamson              | Hill & Adamson            | DONE    |
| 07  | gustave-le-gray           | Gustave Le Gray           | DONE    |
| 08  | roger-fenton              | Roger Fenton              | DONE    |
| 09  | nadar                     | Nadar (Félix Tournachon)  | DONE    |
| 10  | mathew-brady              | Mathew Brady              | DONE    |
| 11  | alexander-gardner         | Alexander Gardner         | DONE    |
| 12  | timothy-osullivan         | Timothy O'Sullivan        | DONE    |
| 13  | carleton-watkins          | Carleton Watkins          | DONE    |
| 14  | william-henry-jackson     | William Henry Jackson     | DONE    |
| 15  | eadweard-muybridge        | Eadweard Muybridge        | DONE    |
| 16  | etienne-jules-marey       | Étienne-Jules Marey       | DONE    |
| 17  | felice-beato              | Felice Beato              | DONE    |
| 18  | john-thomson              | John Thomson              | DONE    |
| 19  | jacob-riis                | Jacob Riis                | DONE    |
| 20  | lewis-hine                | Lewis Hine                | DONE    |
| 21  | julia-margaret-cameron    | Julia Margaret Cameron    | DONE    |
| 22  | peter-henry-emerson       | Peter Henry Emerson       | DONE    |
| 23  | frederick-h-evans         | Frederick H. Evans        | DONE    |
| 24  | gertrude-kasebier         | Gertrude Käsebier         | DONE    |
| 25  | clarence-h-white          | Clarence H. White         | DONE    |
| 26  | edward-s-curtis           | Edward S. Curtis          | DONE    |
| 27  | frances-benjamin-johnston | Frances Benjamin Johnston | DONE    |
| 28  | alvin-langdon-coburn      | Alvin Langdon Coburn      | DONE    |
| 29  | karl-blossfeldt           | Karl Blossfeldt           | DONE    |
| 30  | alfred-stieglitz          | Alfred Stieglitz          | DONE    |
| 31  | eugene-atget              | Eugène Atget              | DONE    |
| 32  | edward-steichen           | Edward Steichen           | DONE    |
| 33  | paul-strand               | Paul Strand               | DONE    |
| 34  | laszlo-moholy-nagy        | László Moholy-Nagy        | DONE    |
| 35  | alexander-rodchenko       | Alexander Rodchenko       | DONE    |
| 36  | germaine-krull            | Germaine Krull            | DONE    |
| 37  | albert-renger-patzsch     | Albert Renger-Patzsch     | DONE    |
| 38  | august-sander             | August Sander             | DONE    |
| 39  | man-ray                   | Man Ray                   | DONE    |
| 40  | andre-kertesz             | André Kertész             | DONE    |
| 41  | jacques-henri-lartigue    | Jacques-Henri Lartigue    | DONE    |
| 42  | dorothea-lange            | Dorothea Lange            | DONE    |
| 43  | walker-evans              | Walker Evans              | DONE    |
| 44  | gordon-parks              | Gordon Parks              | DONE    |
| 45  | arthur-rothstein          | Arthur Rothstein          | DONE    |
| 46  | ben-shahn                 | Ben Shahn                 | DONE    |
| 47  | russell-lee               | Russell Lee               | DONE    |
| 48  | marion-post-wolcott       | Marion Post Wolcott       | DONE    |
| 49  | jack-delano               | Jack Delano               | DONE    |
| 50  | john-vachon               | John Vachon               | DONE    |
| 51  | berenice-abbott           | Berenice Abbott           | DONE    |
| 52  | margaret-bourke-white     | Margaret Bourke-White     | DONE    |
| 53  | robert-capa               | Robert Capa               | DONE    |
| 54  | w-eugene-smith            | W. Eugene Smith           | DONE    |
| 55  | henri-cartier-bresson     | Henri Cartier-Bresson     | DONE    |
| 56  | alfred-eisenstaedt        | Alfred Eisenstaedt        | DONE    |
| 57  | weegee                    | Weegee (Arthur Fellig)    | DONE    |
| 58  | yousuf-karsh              | Yousuf Karsh              | DONE    |
| 59  | brassai                   | Brassaï                   | DONE    |
| 60  | robert-doisneau           | Robert Doisneau           | DONE    |
| 61  | josef-koudelka            | Josef Koudelka            | DONE    |
| 62  | cecil-beaton              | Cecil Beaton              | DONE    |
| 63  | horst-p-horst             | Horst P. Horst            | DONE    |
| 64  | george-hurrell            | George Hurrell            | DONE    |
| 65  | irving-penn               | Irving Penn               | DONE    |
| 66  | richard-avedon            | Richard Avedon            | DONE    |
| 67  | helmut-newton             | Helmut Newton             | DONE    |
| 68  | guy-bourdin               | Guy Bourdin               | DONE    |
| 69  | lillian-bassman           | Lillian Bassman           | DONE    |
| 70  | annie-leibovitz           | Annie Leibovitz           | DONE    |
| 71  | ansel-adams               | Ansel Adams               | DONE    |
| 72  | edward-weston             | Edward Weston             | DONE    |
| 73  | imogen-cunningham         | Imogen Cunningham         | DONE    |
| 74  | minor-white               | Minor White               | DONE    |
| 75  | wynn-bullock              | Wynn Bullock              | DONE    |
| 76  | eliot-porter              | Eliot Porter              | DONE    |
| 77  | bill-brandt               | Bill Brandt               | DONE    |
| 78  | josef-sudek               | Josef Sudek               | DONE    |
| 79  | sebastiao-salgado         | Sebastião Salgado         | DONE    |
| 80  | hiroshi-sugimoto          | Hiroshi Sugimoto          | DONE    |
| 81  | lisette-model             | Lisette Model             | DONE    |
| 82  | helen-levitt              | Helen Levitt              | DONE    |
| 83  | saul-leiter               | Saul Leiter               | DONE    |
| 84  | robert-frank              | Robert Frank              | PENDING |
| 85  | diane-arbus               | Diane Arbus               | PENDING |
| 86  | garry-winogrand           | Garry Winogrand           | PENDING |
| 87  | lee-friedlander           | Lee Friedlander           | PENDING |
| 88  | vivian-maier              | Vivian Maier              | PENDING |
| 89  | william-eggleston         | William Eggleston         | PENDING |
| 90  | stephen-shore             | Stephen Shore             | PENDING |
| 91  | manuel-alvarez-bravo      | Manuel Álvarez Bravo      | PENDING |
| 92  | graciela-iturbide         | Graciela Iturbide         | PENDING |
| 93  | seydou-keita              | Seydou Keïta              | PENDING |
| 94  | malick-sidibe             | Malick Sidibé             | PENDING |
| 95  | daido-moriyama            | Daido Moriyama            | PENDING |
| 96  | shomei-tomatsu            | Shomei Tomatsu            | PENDING |
| 97  | fan-ho                    | Fan Ho                    | PENDING |
| 98  | raghu-rai                 | Raghu Rai                 | PENDING |
| 99  | david-goldblatt           | David Goldblatt           | PENDING |
| 100 | bernd-hilla-becher        | Bernd & Hilla Becher      | PENDING |
