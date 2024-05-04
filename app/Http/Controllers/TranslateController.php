<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use GuzzleHttp\Client;

class TranslateController extends Controller
{
    public function translateWithGPT(Request $request)
    {
        $client = new Client();

        $response = $client->post(env('GPT_API_URL'), [
            'headers' => [
                'Authorization' => 'Bearer ' . env('GPT_KEY_API'),
                'Content-Type' => 'application/json',
            ],
            'json' => [
                "model" => "gpt-3.5-turbo-16k",
                "messages" => [
                    [
                        "content" => $prompt . ":" . $value,
                        "role" => "user",
                    ]
                ],
                "temperature" => 0.7,
                "max_tokens" => 9000,
                "frequency_penalty" => 0,
                "presence_penalty" => 0,
                "stream" => false
            ]
        ]);
        $result = '';
        if ($response->getStatusCode() == 200) {
            $data = json_decode($response->getBody(), true);
            if (isset($data['choices'][0]['message']['content'])) {
                $result = $data['choices'][0]['message']['content'];  }
        }
        return response()->json(['reply' => $result]);
    }
    public function translateWithGG($text = '', $sl = 'ja', $tl = 'vi') {
        $client = new Client();   
        $response = $client->get(env('GOOGLE_TRANS_API_URL').$sl.'&tl='.$tl.'&dt=t&q='.$text);
        $result='';

        if ($response->getStatusCode() == 200) {
            $data = json_decode($response->getBody(), true);
            if (isset($data[0])) {
                foreach ($data[0] as $results) {
                $result = $results[0];
                }
            }
        }
        return $result;
    }

}
