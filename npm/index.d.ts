declare module '@apiverve/crossword' {
  export interface crosswordOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface crosswordResponse {
    status: string;
    error: string | null;
    data: CrosswordGeneratorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface CrosswordGeneratorData {
      size:          number | null;
      difficulty:    null | string;
      theme:         null | string;
      grid:          Array<(null | string)[]>;
      across:        Across[];
      down:          Across[];
      wordCount:     number | null;
      html:          null | string;
      image:         Image;
      solutionImage: Image;
  }
  
  interface Across {
      number: number | null;
      clue:   null | string;
      answer: null | string;
      length: number | null;
  }
  
  interface Image {
      imageName:   null | string;
      format:      null | string;
      downloadURL: null | string;
      expires:     number | null;
  }

  export default class crosswordWrapper {
    constructor(options: crosswordOptions);

    execute(callback: (error: any, data: crosswordResponse | null) => void): Promise<crosswordResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: crosswordResponse | null) => void): Promise<crosswordResponse>;
    execute(query?: Record<string, any>): Promise<crosswordResponse>;
  }
}
