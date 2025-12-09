declare module '@apiverve/crossword' {
  export interface crosswordOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface crosswordResponse {
    status: string;
    error: string | null;
    data: CrosswordGeneratorData;
    code?: number;
  }


  interface CrosswordGeneratorData {
      size:          number;
      difficulty:    string;
      theme:         string;
      grid:          Array<(null | string)[]>;
      across:        Across[];
      down:          Across[];
      wordCount:     number;
      html:          string;
      image:         Image;
      solutionImage: Image;
  }
  
  interface Across {
      number: number;
      clue:   string;
      answer: string;
      length: number;
  }
  
  interface Image {
      imageName:   string;
      format:      string;
      downloadURL: string;
      expires:     number;
  }

  export default class crosswordWrapper {
    constructor(options: crosswordOptions);

    execute(callback: (error: any, data: crosswordResponse | null) => void): Promise<crosswordResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: crosswordResponse | null) => void): Promise<crosswordResponse>;
    execute(query?: Record<string, any>): Promise<crosswordResponse>;
  }
}
